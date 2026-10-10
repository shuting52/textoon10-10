#!/usr/bin/env bash
set -euo pipefail
ROOT=/workspace/pixellabplus_custom
BASE=/workspace/PixelLabPlus_1.9.5_plus_enhanced_language_group_fixed.apk
DEX=$ROOT/build/final_fixed/classes.dex
LOCALES=$ROOT/locale_assets/pixellab_locales
STAGE=$ROOT/build/final_fixed/package
UNSIGNED=$STAGE/PixelLabPlus_1.9.5_plus_fixed_unsigned.apk
ALIGNED=$STAGE/PixelLabPlus_1.9.5_plus_fixed_aligned.apk
OUTPUT=/workspace/PixelLabPlus_1.9.5_plus_enhanced_global_theme_longpress_fixed.apk
BUILD_TOOLS=/home/ubuntu/Android/Sdk/build-tools/37.0.0
KEYSTORE=/home/ubuntu/.android/debug.keystore

[ -f "$BASE" ] || { echo "Missing enhanced base APK: $BASE" >&2; exit 1; }
[ -d "$ROOT/decoded/smali" ] || { echo "Missing decoded smali source tree" >&2; exit 1; }
[ -d "$LOCALES" ] || { echo "Missing corrected locale catalogs: $LOCALES" >&2; exit 1; }
LOCALE_COUNT=$(find "$LOCALES" -maxdepth 1 -type f -name '*.json' | wc -l)
[ "$LOCALE_COUNT" -eq 17 ] || { echo "Expected 17 locale catalogs, found $LOCALE_COUNT" >&2; exit 1; }
python3 "$ROOT/scripts/patch_global_language_theme_qq.py"
python3 "$ROOT/scripts/patch_theme_longpress.py"
mkdir -p "$(dirname "$DEX")"
smali assemble -a 23 "$ROOT/decoded/smali" -o "$DEX"
[ -s "$DEX" ] || { echo "Rebuilt DEX is empty: $DEX" >&2; exit 1; }
mkdir -p "$STAGE/overlay/assets/pixellab_locales"
cp "$DEX" "$STAGE/overlay/classes.dex"
cp "$LOCALES"/*.json "$STAGE/overlay/assets/pixellab_locales/"
cp "$BASE" "$UNSIGNED"
# Replace the app DEX and all locale catalogs, then remove any old v1 signature records before signing.
zip -q -d "$UNSIGNED" 'classes.dex' 'assets/pixellab_locales/*.json' 'META-INF/*.RSA' 'META-INF/*.SF' \
  'META-INF/*.DSA' 'META-INF/*.EC' 'META-INF/*.RS' 'META-INF/MANIFEST.MF' \
  >/dev/null 2>&1 || true
(
  cd "$STAGE/overlay"
  zip -q "$UNSIGNED" classes.dex assets/pixellab_locales/*.json
)
"$BUILD_TOOLS/zipalign" -f 4 "$UNSIGNED" "$ALIGNED"
rm -f "$OUTPUT" "$OUTPUT.idsig"
"$BUILD_TOOLS/apksigner" sign \
  --ks "$KEYSTORE" \
  --ks-key-alias androiddebugkey \
  --ks-pass pass:android \
  --key-pass pass:android \
  --out "$OUTPUT" "$ALIGNED"
"$BUILD_TOOLS/zipalign" -c 4 "$OUTPUT"
"$BUILD_TOOLS/apksigner" verify --verbose --print-certs "$OUTPUT" \
  > "$STAGE/signature_verify.txt"
unzip -tq "$OUTPUT"
python3 - "$OUTPUT" "$DEX" "$LOCALES" <<'PY'
import hashlib, json, pathlib, sys, zipfile
apk, dex, locale_dir = sys.argv[1:]
locale_files = sorted(pathlib.Path(locale_dir).glob('*.json'))
assert len(locale_files) == 17, f'expected 17 source catalogs, found {len(locale_files)}'
expected_catalogs = {f'assets/pixellab_locales/{p.name}': p.read_bytes() for p in locale_files}
required_labels = ['Image format', 'format :', 'quality', 'quality preset :', 'dimensions :', 'width :', 'height :', 'export image', 'Export image', 'save to gallery', 'Save to gallery', 'stickers', 'import', 'draw', 'shapes', 'bezier', 'arrow', 'color', 'transparent', 'image size', 'image', 'rotate', 'crop', 'noise', 'stripes', 'brightness', 'contrast', 'vignette']
with zipfile.ZipFile(apk) as archive:
    actual = archive.read('classes.dex')
expected = open(dex, 'rb').read()
assert actual == expected, 'packaged classes.dex differs from assembled DEX'
assert b'PlusEnhancements$LocaleWatcher' in actual, 'live localization watcher missing from DEX'
assert b'PlusEnhancements$CanvasLongPressAction' in actual, 'canvas long-press handler missing from DEX'
assert b'PlusEnhancements$DeleteTextAction' in actual, 'undo-aware text deletion action missing from DEX'
assert b'scheduleCanvasLongPress' in actual, 'canvas long-press scheduling hook missing from DEX'
assert b'styleWidget' in actual, 'global theme widget styling missing from DEX'
with zipfile.ZipFile(apk) as archive:
    locales = [n for n in archive.namelist() if n.startswith('assets/pixellab_locales/') and n.endswith('.json')]
    assert len(locales) == 17, f'expected 17 offline locale catalogs, found {len(locales)}'
    assert set(locales) == set(expected_catalogs), 'APK locale catalog file set differs from project source'
    for name, source_bytes in expected_catalogs.items():
        packaged_bytes = archive.read(name)
        assert packaged_bytes == source_bytes, f'APK does not contain the latest project catalog: {name}'
        catalog = json.loads(packaged_bytes)
        for source in required_labels:
            assert catalog['texts'].get(source) and catalog['texts'][source] != source, (name, source, catalog['texts'].get(source))
    zh = json.loads(archive.read('assets/pixellab_locales/zh-CN.json'))
expected = {'styles': '样式', 'edit': '编辑', 'delete': '删除', 'copy': '复制', 'to front': '到前面', 'to back': '转到后面'}
for source, translated in expected.items():
    assert zh['texts'].get(source) == translated, (source, zh['texts'].get(source))
for source, translated in {'undo': '撤销', 'redo': '重做', 'layers': '图层', 'tools': '工具', 'background': '背景', 'text': '文本', 'draw': '绘图', 'sticker': '贴纸'}.items():
    assert zh['texts'].get(source) == translated, (source, zh['texts'].get(source))
assert b'mqqapi://card/show_pslcard' in actual, 'QQ native group deep link missing from DEX'
assert b'com.tencent.mobileqq' in actual, 'QQ package pin missing from DEX'
assert b'universal-share/share?ac=1' not in actual, 'legacy browser share URL remains in DEX'
print('Verified classes.dex SHA-256:', hashlib.sha256(actual).hexdigest())
print('Verified latest project locale catalogs:', len(locales), 'across all supported languages and reviewed Simplified Chinese labels')
PY
printf 'Final APK: %s\n' "$OUTPUT"
ls -lh "$OUTPUT"
cat "$STAGE/signature_verify.txt" | tail -12
