#!/usr/bin/env python3
"""Patch min/target SDK integers in an APK's binary AndroidManifest.xml."""
from __future__ import annotations

import pathlib
import struct
import sys
import zipfile

RES_STRING_POOL_TYPE = 0x0001
RES_XML_TYPE = 0x0003
RES_XML_START_ELEMENT_TYPE = 0x0102
TYPE_INT_DEC = 0x10
TYPE_INT_HEX = 0x11
TYPE_STRING = 0x03
NO_INDEX = 0xFFFFFFFF
UTF8_FLAG = 0x00000100


def u16(data: bytes | bytearray, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes | bytearray, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def length8(data: bytes | bytearray, offset: int) -> tuple[int, int]:
    first = data[offset]
    if first & 0x80:
        return ((first & 0x7F) << 8) | data[offset + 1], offset + 2
    return first, offset + 1


def length16(data: bytes | bytearray, offset: int) -> tuple[int, int]:
    first = u16(data, offset)
    if first & 0x8000:
        return ((first & 0x7FFF) << 16) | u16(data, offset + 2), offset + 4
    return first, offset + 2


def parse_string_pool(data: bytes | bytearray, chunk_offset: int, chunk_size: int) -> list[str]:
    header_size = u16(data, chunk_offset + 2)
    count = u32(data, chunk_offset + 8)
    flags = u32(data, chunk_offset + 16)
    strings_start = u32(data, chunk_offset + 20)
    offsets_start = chunk_offset + header_size
    base = chunk_offset + strings_start
    strings: list[str] = []
    for index in range(count):
        item = base + u32(data, offsets_start + index * 4)
        if flags & UTF8_FLAG:
            _, item = length8(data, item)  # UTF-16 character count
            byte_count, item = length8(data, item)
            strings.append(bytes(data[item:item + byte_count]).decode("utf-8"))
        else:
            char_count, item = length16(data, item)
            strings.append(bytes(data[item:item + char_count * 2]).decode("utf-16le"))
    if chunk_offset + chunk_size > len(data):
        raise ValueError("String pool chunk extends beyond the manifest")
    return strings


def encode_length8(value: int) -> bytes:
    if value < 0x80:
        return bytes((value,))
    if value < 0x8000:
        return bytes((0x80 | (value >> 8), value & 0xFF))
    raise ValueError(f"UTF-8 string length is too large: {value}")


def encode_length16(value: int) -> bytes:
    if value < 0x8000:
        return struct.pack("<H", value)
    if value < 0x80000000:
        return struct.pack("<HH", 0x8000 | (value >> 16), value & 0xFFFF)
    raise ValueError(f"UTF-16 string length is too large: {value}")


def rebuild_string_pool(chunk: bytes, strings: list[str], replacements: dict[int, str]) -> bytes:
    header_size = u16(chunk, 2)
    string_count = u32(chunk, 8)
    style_count = u32(chunk, 12)
    flags = u32(chunk, 16)
    styles_start = u32(chunk, 24)
    if string_count != len(strings):
        raise ValueError("String-pool string count changed unexpectedly")
    style_offsets_start = header_size + string_count * 4
    style_offsets = [u32(chunk, style_offsets_start + i * 4) for i in range(style_count)]

    string_area = bytearray()
    offsets: list[int] = []
    for index, original in enumerate(strings):
        value = replacements.get(index, original)
        offsets.append(len(string_area))
        if flags & UTF8_FLAG:
            encoded = value.encode("utf-8")
            utf16_length = len(value.encode("utf-16le")) // 2
            string_area.extend(encode_length8(utf16_length))
            string_area.extend(encode_length8(len(encoded)))
            string_area.extend(encoded + b"\0")
        else:
            encoded = value.encode("utf-16le")
            string_area.extend(encode_length16(len(encoded) // 2))
            string_area.extend(encoded + b"\0\0")

    string_area.extend(b"\0" * ((-len(string_area)) % 4))
    new_strings_start = header_size + (string_count + style_count) * 4
    new_styles_start = new_strings_start + len(string_area) if style_count else 0
    style_blob = chunk[styles_start:] if style_count and styles_start else b""
    new_size = new_strings_start + len(string_area) + len(style_blob)

    rebuilt = bytearray(chunk[:header_size])
    struct.pack_into("<I", rebuilt, 4, new_size)
    struct.pack_into("<I", rebuilt, 20, new_strings_start)
    struct.pack_into("<I", rebuilt, 24, new_styles_start)
    for offset in offsets:
        rebuilt.extend(struct.pack("<I", offset))
    for offset in style_offsets:
        rebuilt.extend(struct.pack("<I", offset))
    rebuilt.extend(string_area)
    rebuilt.extend(style_blob)
    if len(rebuilt) != new_size:
        raise AssertionError(f"String pool size mismatch: {len(rebuilt)} != {new_size}")
    return bytes(rebuilt)


def patch_manifest(blob: bytes, minimum: int, target: int, new_package: str | None = None) -> tuple[bytes, int, int, str | None, str | None]:
    data = bytearray(blob)
    if len(data) < 8 or u16(data, 0) != RES_XML_TYPE:
        raise ValueError("APK manifest is not binary XML")
    total_size = u32(data, 4)
    if total_size != len(data):
        raise ValueError(f"Unexpected binary XML size: header={total_size}, actual={len(data)}")

    strings: list[str] | None = None
    string_pool_offset: int | None = None
    string_pool_size = 0
    package_index: int | None = None
    authority_index: int | None = None
    authority_old: str | None = None
    cursor = u16(data, 2)
    old_values: dict[str, int] = {}
    patched: set[str] = set()
    while cursor < total_size:
        if cursor + 8 > total_size:
            raise ValueError("Truncated binary XML chunk header")
        chunk_type = u16(data, cursor)
        chunk_header_size = u16(data, cursor + 2)
        chunk_size = u32(data, cursor + 4)
        if chunk_size < chunk_header_size or cursor + chunk_size > total_size:
            raise ValueError("Invalid binary XML chunk size")

        if chunk_type == RES_STRING_POOL_TYPE:
            strings = parse_string_pool(data, cursor, chunk_size)
            string_pool_offset = cursor
            string_pool_size = chunk_size
        elif chunk_type == RES_XML_START_ELEMENT_TYPE:
            if strings is None:
                raise ValueError("XML element appeared before its string pool")
            element_name_index = u32(data, cursor + 20)
            element_name = strings[element_name_index]
            extension = cursor + 16
            attributes_start = extension + u16(data, cursor + 24)
            attribute_size = u16(data, cursor + 26)
            attribute_count = u16(data, cursor + 28)
            if attribute_size < 20:
                raise ValueError(f"Unexpected {element_name} attribute size: {attribute_size}")
            attributes: dict[str, tuple[int, int]] = {}
            for i in range(attribute_count):
                attribute = attributes_start + i * attribute_size
                name_index = u32(data, attribute + 4)
                name = strings[name_index]
                raw_index = u32(data, attribute + 8)
                value_type = data[attribute + 15]
                typed_index = u32(data, attribute + 16)
                string_index = raw_index if raw_index != NO_INDEX else (typed_index if value_type == TYPE_STRING else NO_INDEX)
                attributes[name] = (attribute, string_index)

            if element_name == "uses-sdk":
                for name, (attribute, _) in attributes.items():
                    if name not in ("minSdkVersion", "targetSdkVersion"):
                        continue
                    value_type = data[attribute + 15]
                    value_offset = attribute + 16
                    if value_type not in (TYPE_INT_DEC, TYPE_INT_HEX):
                        raise ValueError(f"{name} is not stored as an integer (type 0x{value_type:02x})")
                    previous = u32(data, value_offset)
                    old_values[name] = previous
                    new_value = minimum if name == "minSdkVersion" else target
                    struct.pack_into("<I", data, value_offset, new_value)
                    patched.add(name)
            elif element_name == "manifest" and "package" in attributes:
                package_index = attributes["package"][1]
            elif element_name == "provider" and "authorities" in attributes:
                name_index = attributes.get("name", (0, NO_INDEX))[1]
                provider_name = strings[name_index] if name_index != NO_INDEX else ""
                if "CrashlyticsInitProvider" in provider_name:
                    authority_index = attributes["authorities"][1]
                    if authority_index != NO_INDEX:
                        authority_old = strings[authority_index]
        cursor += chunk_size

    expected = {"minSdkVersion", "targetSdkVersion"}
    if patched != expected:
        missing = sorted(expected - patched)
        raise ValueError(f"Could not find exactly one uses-sdk entry with required attributes; missing={missing}")
    old_package: str | None = None
    if new_package:
        if strings is None or string_pool_offset is None or package_index is None or package_index == NO_INDEX:
            raise ValueError("Could not find the manifest package attribute")
        if authority_index is None or authority_index == NO_INDEX or authority_old is None:
            raise ValueError("Could not find the Crashlytics provider authority")
        old_package = strings[package_index]
        replacements = {
            package_index: new_package,
            authority_index: new_package + ".crashlyticsinitprovider",
        }
        pool = bytes(data[string_pool_offset:string_pool_offset + string_pool_size])
        new_pool = rebuild_string_pool(pool, strings, replacements)
        data = data[:string_pool_offset] + new_pool + data[string_pool_offset + string_pool_size:]
        struct.pack_into("<I", data, 4, len(data))
    return bytes(data), old_values["minSdkVersion"], old_values["targetSdkVersion"], old_package, authority_old


def main() -> None:
    if len(sys.argv) not in (5, 6):
        raise SystemExit("usage: patch_android_sdk_manifest.py INPUT.apk OUTPUT.xml MIN_SDK TARGET_SDK [NEW_PACKAGE]")
    apk_path, output_path = pathlib.Path(sys.argv[1]), pathlib.Path(sys.argv[2])
    minimum, target = int(sys.argv[3]), int(sys.argv[4])
    new_package = sys.argv[5] if len(sys.argv) == 6 else None
    with zipfile.ZipFile(apk_path) as archive:
        original = archive.read("AndroidManifest.xml")
    patched, old_minimum, old_target, old_package, old_authority = patch_manifest(original, minimum, target, new_package)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_bytes(patched)
    print(f"AndroidManifest SDK: min {old_minimum} -> {minimum}; target {old_target} -> {target}")
    if new_package:
        print(f"AndroidManifest package: {old_package} -> {new_package}")
        print(f"Crashlytics provider authority: {old_authority} -> {new_package}.crashlyticsinitprovider")


if __name__ == "__main__":
    main()
