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


def patch_manifest(blob: bytes, minimum: int, target: int) -> tuple[bytes, int, int]:
    data = bytearray(blob)
    if len(data) < 8 or u16(data, 0) != RES_XML_TYPE:
        raise ValueError("APK manifest is not binary XML")
    total_size = u32(data, 4)
    if total_size != len(data):
        raise ValueError(f"Unexpected binary XML size: header={total_size}, actual={len(data)}")

    strings: list[str] | None = None
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
        elif chunk_type == RES_XML_START_ELEMENT_TYPE:
            if strings is None:
                raise ValueError("XML element appeared before its string pool")
            element_name_index = u32(data, cursor + 20)
            element_name = strings[element_name_index]
            if element_name == "uses-sdk":
                extension = cursor + 16
                attributes_start = extension + u16(data, cursor + 24)
                attribute_size = u16(data, cursor + 26)
                attribute_count = u16(data, cursor + 28)
                if attribute_size < 20:
                    raise ValueError(f"Unexpected uses-sdk attribute size: {attribute_size}")
                for i in range(attribute_count):
                    attribute = attributes_start + i * attribute_size
                    name_index = u32(data, attribute + 4)
                    name = strings[name_index]
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
        cursor += chunk_size

    expected = {"minSdkVersion", "targetSdkVersion"}
    if patched != expected:
        missing = sorted(expected - patched)
        raise ValueError(f"Could not find exactly one uses-sdk entry with required attributes; missing={missing}")
    return bytes(data), old_values["minSdkVersion"], old_values["targetSdkVersion"]


def main() -> None:
    if len(sys.argv) != 5:
        raise SystemExit("usage: patch_android_sdk_manifest.py INPUT.apk OUTPUT.xml MIN_SDK TARGET_SDK")
    apk_path, output_path = pathlib.Path(sys.argv[1]), pathlib.Path(sys.argv[2])
    minimum, target = int(sys.argv[3]), int(sys.argv[4])
    with zipfile.ZipFile(apk_path) as archive:
        original = archive.read("AndroidManifest.xml")
    patched, old_minimum, old_target = patch_manifest(original, minimum, target)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_bytes(patched)
    print(f"AndroidManifest SDK: min {old_minimum} -> {minimum}; target {old_target} -> {target}")


if __name__ == "__main__":
    main()
