#!/usr/bin/env python3
"""Generate compact offline UI catalogs from PixelLab's decoded Android resources."""
import concurrent.futures
import json
import os
import re
import sys
import time
import urllib.request
from pathlib import Path

ROOT = Path('/workspace/pixellabplus_custom')
DUMP = ROOT / 'resources_values.txt'
MODEL_DIR = ROOT / 'models'
OUTPUT_DIR = ROOT / 'locale_assets' / 'pixellab_locales'
TARGETS = [
    ('zh-CN', 'zh'), ('zh-TW', 'zt'), ('fi', 'fi'), ('ja', 'ja'), ('ko', 'ko'),
    ('fr', 'fr'), ('de', 'de'), ('es', 'es'), ('pt', 'pt'), ('ru', 'ru'),
    ('ar', 'ar'), ('hi', 'hi'), ('id', 'id'), ('th', 'th'), ('vi', 'vi'),
    ('it', 'it'), ('tr', 'tr'),
]
TEXT_LITERAL = re.compile(r'\(string(?:8|16)?\)\s+("(?:\\.|[^"\\])*")')
FORMAT_OR_MARKUP = re.compile(r'%(?:\d+\$)?[-+#0 ,]*(?:\d+|\*)?(?:\.(?:\d+|\*))?[a-zA-Z%]|<[^>]*>|\{[^{}]*\}|\n')


def decode_literal(line):
    match = TEXT_LITERAL.search(line)
    if not match:
        return None
    try:
        return json.loads(match.group(1))
    except Exception:
        return match.group(1)[1:-1]


def parse_resources():
    lines = DUMP.read_text(encoding='utf-8', errors='replace').splitlines()
    resources = {}
    for i, line in enumerate(lines[:-1]):
        match = re.search(r'resource (0x7f0c[0-9a-fA-F]{4}) .*:string/([^:]+): t=0x03', line)
        if not match:
            continue
        value = decode_literal(lines[i + 1])
        if value is not None:
            resources.setdefault(match.group(1), {'name': match.group(2), 'text': value})

    # Keep the first (default/English) values for each array resource ID; later
    # locale-specific configurations in the same table are deliberately ignored.
    arrays = {}
    current = None
    for line in lines:
        match = re.search(r'resource (0x7f020[0-9a-fA-F]{3}) .*:array/[^:]+: <bag>', line)
        if match:
            rid = match.group(1)
            if rid not in arrays:
                arrays[rid] = []
                current = rid
            else:
                current = None
            continue
        if line.lstrip().startswith('resource ') or line.lstrip().startswith('type ') or line.strip().startswith('config '):
            current = None
        if current:
            value = decode_literal(line)
            if value is not None:
                arrays[current].append(value)
    return resources, arrays


def skip_translation(name, text):
    stripped = text.strip()
    low_name = name.lower()
    if not stripped or low_name.startswith('abc_font_family'):
        return True
    if 'ca-app-pub-' in stripped.lower() or low_name.endswith('_id') or low_name.startswith('banner_'):
        return True
    if re.match(r'^(?:https?://|mailto:|content://|file://)', stripped, re.I):
        return True
    if re.fullmatch(r'[\W\d_]+', stripped, re.UNICODE):
        return True
    if any(x in (stripped + ' ' + low_name).lower() for x in ('google_app_id', 'crashlytics', 'admob', 'facebook_app_id')):
        return True
    return False


def protect(text):
    tokens = []
    def replace(match):
        token = 'ZZQPH%03dQZZ' % len(tokens)
        tokens.append((token, match.group(0)))
        return token
    return FORMAT_OR_MARKUP.sub(replace, text), tokens


def restore(translated, source, tokens):
    value = translated
    for token, original in tokens:
        if token.lower() not in value.lower():
            return source
        value = re.sub(re.escape(token), lambda _m: original, value, flags=re.I)
    return value


def download_file(code, model):
    MODEL_DIR.mkdir(parents=True, exist_ok=True)
    url = next((u for u in model.links if u.startswith('https://')), None)
    if not url:
        raise RuntimeError('No HTTPS model URL for ' + code)
    filename = url.rsplit('/', 1)[-1]
    target = MODEL_DIR / filename
    part = target.with_suffix(target.suffix + '.part')
    if target.exists() and target.stat().st_size > 1024 * 1024:
        return target
    headers = {'User-Agent': 'PixelLabOfflineCatalogBuilder/1.0'}
    req = urllib.request.Request(url, headers=headers, method='HEAD')
    with urllib.request.urlopen(req, timeout=60) as response:
        total = int(response.headers.get('Content-Length', '0') or 0)
    offset = part.stat().st_size if part.exists() else 0
    if offset and total and offset >= total:
        part.replace(target)
        return target
    if offset:
        headers['Range'] = 'bytes=%d-' % offset
    req = urllib.request.Request(url, headers=headers)
    last = time.time()
    mode = 'ab' if offset else 'wb'
    print('[download] %s starting at %.1f / %.1f MB' % (code, offset / 1048576, total / 1048576), flush=True)
    with urllib.request.urlopen(req, timeout=60) as response, open(part, mode) as output:
        if offset and getattr(response, 'status', 200) != 206:
            output.close()
            part.unlink(missing_ok=True)
            return download_file(code, model)
        while True:
            chunk = response.read(1024 * 1024)
            if not chunk:
                break
            output.write(chunk)
            offset += len(chunk)
            now = time.time()
            if now - last >= 12:
                print('[download] %s %.1f / %.1f MB' % (code, offset / 1048576, total / 1048576), flush=True)
                last = now
    if total and part.stat().st_size != total:
        raise RuntimeError('%s incomplete: %d / %d bytes' % (code, part.stat().st_size, total))
    part.replace(target)
    print('[download] %s complete (%.1f MB)' % (code, target.stat().st_size / 1048576), flush=True)
    return target


def main():
    sys.path.insert(0, str(ROOT / '.venv' / 'lib' / 'python3.12' / 'site-packages'))
    import argostranslate.package as package
    import argostranslate.translate as translate

    resources, arrays = parse_resources()
    if len(resources) < 300:
        raise RuntimeError('Expected at least 300 string resources; parsed %d' % len(resources))
    texts = list(dict.fromkeys([x['text'] for x in resources.values()] + [v for arr in arrays.values() for v in arr]))
    print('[parse] %d string IDs, %d arrays, %d unique source phrases' % (len(resources), len(arrays), len(texts)), flush=True)

    package.update_package_index()
    available = package.get_available_packages()
    model_by_code = {}
    for locale, code in TARGETS:
        model = next((x for x in available if x.from_code == 'en' and x.to_code == code), None)
        if model is None:
            raise RuntimeError('Missing English-to-%s offline model for %s' % (code, locale))
        model_by_code[code] = model

    # Fetch packages concurrently, then install one-by-one to avoid package database races.
    downloaded = {}
    with concurrent.futures.ThreadPoolExecutor(max_workers=3) as pool:
        futures = {pool.submit(download_file, code, model): code for code, model in model_by_code.items()}
        for future in concurrent.futures.as_completed(futures):
            code = futures[future]
            downloaded[code] = future.result()
    installed_pairs = {(x.from_code, x.to_code) for x in package.get_installed_packages()}
    for code in model_by_code:
        if ('en', code) not in installed_pairs:
            print('[install] en -> %s' % code, flush=True)
            package.install_from_path(str(downloaded[code]))
    installed_pairs = {(x.from_code, x.to_code) for x in package.get_installed_packages()}
    missing = [code for code in model_by_code if ('en', code) not in installed_pairs]
    if missing:
        raise RuntimeError('Models did not install: ' + ','.join(missing))

    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    for locale, code in TARGETS:
        print('[translate] %s (%s)' % (locale, code), flush=True)
        text_map = {}
        for i, source in enumerate(texts, 1):
            if skip_translation('', source):
                text_map[source] = source
                continue
            safe, tokens = protect(source)
            if safe == source and not source.strip():
                text_map[source] = source
                continue
            try:
                converted = translate.translate(safe, 'en', code)
                text_map[source] = restore(converted, source, tokens)
            except Exception as exc:
                print('[warn] %s phrase %d failed: %s' % (locale, i, type(exc).__name__), flush=True)
                text_map[source] = source
            if i % 100 == 0:
                print('[translate] %s %d/%d' % (locale, i, len(texts)), flush=True)

        resource_map = {}
        for rid, item in resources.items():
            source = item['text']
            if not skip_translation(item['name'], source):
                resource_map[str(int(rid, 16))] = text_map.get(source, source)
        array_map = {}
        for rid, source_values in arrays.items():
            array_map[str(int(rid, 16))] = [text_map.get(x, x) for x in source_values]
        payload = {'locale': locale, 'resources': resource_map, 'texts': text_map, 'arrays': array_map}
        output = OUTPUT_DIR / (locale + '.json')
        output.write_text(json.dumps(payload, ensure_ascii=False, separators=(',', ':')), encoding='utf-8')
        print('[write] %s %d resource translations, %d array entries, %.1f KB' % (
            output.name, len(resource_map), sum(map(len, arrays.values())), output.stat().st_size / 1024), flush=True)

    print('[done] catalogs:', OUTPUT_DIR, flush=True)


if __name__ == '__main__':
    main()
