#!/usr/bin/env bash
set -euo pipefail
ROOT=/workspace/pixellabplus_custom
BASE=${PIXELLAB_BASE_APK:-/workspace/PixelLabPlus_1.9.5_plus_enhanced_global_theme_longpress_fixed.apk}
APP_ID=com.PixelLab2026.app
DEX=$ROOT/build/final_fixed/classes.dex
LOCALES=$ROOT/locale_assets/pixellab_locales
STAGE=$ROOT/build/final_fixed/package
UNSIGNED=$STAGE/PixelLabPlus_1.9.5_plus_fixed_unsigned.apk
ALIGNED=$STAGE/PixelLabPlus_1.9.5_plus_fixed_aligned.apk
OUTPUT=/workspace/PixelLabPlus_1.9.5_PixelLab2026.apk
BUILD_TOOLS=/home/ubuntu/Android/Sdk/build-tools/37.0.0
KEYSTORE=/home/ubuntu/.android/debug.keystore
SDK_CONFIG=$ROOT/decoded/apktool.yml

[ -f "$BASE" ] || { echo "Missing enhanced base APK: $BASE" >&2; exit 1; }
[ -d "$ROOT/decoded/smali" ] || { echo "Missing decoded smali source tree" >&2; exit 1; }
[ -d "$LOCALES" ] || { echo "Missing corrected locale catalogs: $LOCALES" >&2; exit 1; }
[ -f "$SDK_CONFIG" ] || { echo "Missing SDK configuration: $SDK_CONFIG" >&2; exit 1; }
LOCALE_COUNT=$(find "$LOCALES" -maxdepth 1 -type f -name '*.json' | wc -l)
[ "$LOCALE_COUNT" -eq 17 ] || { echo "Expected 17 locale catalogs, found $LOCALE_COUNT" >&2; exit 1; }
MIN_SDK=$(sed -n "s/^  minSdkVersion: '\([^']*\)'$/\1/p" "$SDK_CONFIG")
TARGET_SDK=$(sed -n "s/^  targetSdkVersion: '\([^']*\)'$/\1/p" "$SDK_CONFIG")
[ "$MIN_SDK" = 23 ] || { echo "Expected Android 6/API 23 minimum, found $MIN_SDK" >&2; exit 1; }
[ -n "$TARGET_SDK" ] || { echo "Could not read target SDK from $SDK_CONFIG" >&2; exit 1; }

python3 "$ROOT/scripts/patch_global_language_theme_qq.py"
python3 "$ROOT/scripts/patch_theme_longpress.py"
mkdir -p "$(dirname "$DEX")" "$STAGE/overlay/assets/pixellab_locales" "$STAGE/manifest"
smali assemble -a 23 "$ROOT/decoded/smali" -o "$DEX"
[ -s "$DEX" ] || { echo "Rebuilt DEX is empty: $DEX" >&2; exit 1; }

# Preserve the legacy resource table byte-for-byte. Patch applicationId,
# Crashlytics provider authority, and SDK integers in the binary manifest.
cp "$BASE" "$UNSIGNED"
zip -q -d "$UNSIGNED" 'classes*.dex' 'assets/pixellab_locales/*.json' 'META-INF/*.RSA' 'META-INF/*.SF' \
  'META-INF/*.DSA' 'META-INF/*.EC' 'META-INF/*.RS' 'META-INF/MANIFEST.MF' \
  >/dev/null 2>&1 || true
python3 "$ROOT/scripts/patch_android_sdk_manifest.py" "$BASE" "$STAGE/manifest/AndroidManifest.xml" "$MIN_SDK" "$TARGET_SDK" "$APP_ID"
(
  cd "$STAGE/manifest"
  zip -q -0 "$UNSIGNED" AndroidManifest.xml
)
cp "$DEX" "$STAGE/overlay/classes.dex"
cp "$LOCALES"/*.json "$STAGE/overlay/assets/pixellab_locales/"
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
"$BUILD_TOOLS/apksigner" verify --verbose --print-certs "$OUTPUT" > "$STAGE/signature_verify.txt"
unzip -tq "$OUTPUT"
BADGING=$("$BUILD_TOOLS/aapt" dump badging "$OUTPUT")
grep -F "package: name='$APP_ID'" <<<"$BADGING" >/dev/null || { echo "APK package name mismatch" >&2; exit 1; }
grep -F "sdkVersion:'$MIN_SDK'" <<<"$BADGING" >/dev/null || { echo "APK minimum SDK metadata mismatch" >&2; exit 1; }
grep -F "targetSdkVersion:'$TARGET_SDK'" <<<"$BADGING" >/dev/null || { echo "APK target SDK metadata mismatch" >&2; exit 1; }
MANIFEST_TREE=$("$BUILD_TOOLS/aapt" dump xmltree "$OUTPUT" AndroidManifest.xml)
grep -F "$APP_ID.crashlyticsinitprovider" <<<"$MANIFEST_TREE" >/dev/null || { echo "Crashlytics provider authority mismatch" >&2; exit 1; }
python3 - "$OUTPUT" "$DEX" "$LOCALES" <<'PY'
import hashlib, json, pathlib, sys, zipfile
apk, dex, locale_dir = sys.argv[1:]
locale_files = sorted(pathlib.Path(locale_dir).glob('*.json'))
assert len(locale_files) == 17, f'expected 17 source catalogs, found {len(locale_files)}'
expected_catalogs = {f'assets/pixellab_locales/{p.name}': p.read_bytes() for p in locale_files}
required_labels = ['Image format', 'format :', 'quality', 'quality preset :', 'dimensions :', 'width :', 'height :', 'export image', 'Export image', 'save to gallery', 'Save to gallery', 'stickers', 'import', 'draw', 'shapes', 'bezier', 'arrow', 'color', 'transparent', 'image size', 'image', 'rotate', 'crop', 'noise', 'stripes', 'brightness', 'contrast', 'vignette']
with zipfile.ZipFile(apk) as archive:
    actual = archive.read('classes.dex')
    locales = [n for n in archive.namelist() if n.startswith('assets/pixellab_locales/') and n.endswith('.json')]
assert actual == open(dex, 'rb').read(), 'packaged classes.dex differs from assembled DEX'
for marker in (b'PlusEnhancements$LocaleWatcher', b'PlusEnhancements$CanvasLongPressAction', b'PlusEnhancements$DeleteTextAction', b'scheduleCanvasLongPress', b'styleWidget'):
    assert marker in actual, f'required code marker missing: {marker!r}'
assert b'mqqapi://card/show_pslcard' in actual, 'QQ native group deep link missing from DEX'
assert b'com.tencent.mobileqq' in actual, 'QQ package pin missing from DEX'
assert b'universal-share/share?ac=1' not in actual, 'legacy browser share URL remains in DEX'
assert len(locales) == 17, f'expected 17 offline locale catalogs, found {len(locales)}'
assert set(locales) == set(expected_catalogs), 'APK locale catalog file set differs from project source'
with zipfile.ZipFile(apk) as archive:
    for name, source_bytes in expected_catalogs.items():
        packaged_bytes = archive.read(name)
        assert packaged_bytes == source_bytes, f'APK does not contain the latest project catalog: {name}'
        catalog = json.loads(packaged_bytes)
        for source in required_labels:
            assert catalog['texts'].get(source) and catalog['texts'][source] != source, (name, source, catalog['texts'].get(source))
    zh = json.loads(archive.read('assets/pixellab_locales/zh-CN.json'))
for source, translated in {'styles': '样式', 'edit': '编辑', 'delete': '删除', 'copy': '复制', 'to front': '到前面', 'to back': '转到后面', 'undo': '撤销', 'redo': '重做', 'layers': '图层', 'tools': '工具', 'background': '背景', 'text': '文本', 'draw': '绘图', 'sticker': '贴纸'}.items():
    assert zh['texts'].get(source) == translated, (source, zh['texts'].get(source))
print('Verified classes.dex SHA-256:', hashlib.sha256(actual).hexdigest())
print('Verified APK package/SDK metadata, signature, ZIP integrity and 17 locale catalogs.')
PY
printf 'Final APK: %s\n' "$OUTPUT"
ls -lh "$OUTPUT"
tail -12 "$STAGE/signature_verify.txt"
