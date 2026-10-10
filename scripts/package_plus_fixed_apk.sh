#!/usr/bin/env bash
set -euo pipefail
ROOT=/workspace/pixellabplus_custom
BASE=/workspace/PixelLabPlus_1.9.5_plus_enhanced.apk
DEX=$ROOT/build/final_fixed/classes.dex
LOCALE=$ROOT/locale_assets/pixellab_locales/zh-CN.json
STAGE=$ROOT/build/final_fixed/package
UNSIGNED=$STAGE/PixelLabPlus_1.9.5_plus_fixed_unsigned.apk
ALIGNED=$STAGE/PixelLabPlus_1.9.5_plus_fixed_aligned.apk
OUTPUT=/workspace/PixelLabPlus_1.9.5_plus_enhanced_language_group_fixed.apk
BUILD_TOOLS=/home/ubuntu/Android/Sdk/build-tools/37.0.0
KEYSTORE=/home/ubuntu/.android/debug.keystore

[ -f "$BASE" ] || { echo "Missing enhanced base APK: $BASE" >&2; exit 1; }
[ -d "$ROOT/decoded/smali" ] || { echo "Missing decoded smali source tree" >&2; exit 1; }
[ -f "$LOCALE" ] || { echo "Missing corrected Simplified Chinese catalog: $LOCALE" >&2; exit 1; }
python3 "$ROOT/scripts/patch_global_language_theme_qq.py"
mkdir -p "$(dirname "$DEX")"
smali assemble -a 23 "$ROOT/decoded/smali" -o "$DEX"
[ -s "$DEX" ] || { echo "Rebuilt DEX is empty: $DEX" >&2; exit 1; }
mkdir -p "$STAGE/overlay/assets/pixellab_locales"
cp "$DEX" "$STAGE/overlay/classes.dex"
cp "$LOCALE" "$STAGE/overlay/assets/pixellab_locales/zh-CN.json"
cp "$BASE" "$UNSIGNED"
# Replace the app DEX and remove any old v1 signature records before signing.
zip -q -d "$UNSIGNED" 'classes.dex' 'assets/pixellab_locales/zh-CN.json' 'META-INF/*.RSA' 'META-INF/*.SF' \
  'META-INF/*.DSA' 'META-INF/*.EC' 'META-INF/*.RS' 'META-INF/MANIFEST.MF' \
  >/dev/null 2>&1 || true
(
  cd "$STAGE/overlay"
  zip -q "$UNSIGNED" classes.dex assets/pixellab_locales/zh-CN.json
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
python3 - "$OUTPUT" "$DEX" <<'PY'
import hashlib, sys, zipfile
import json
apk, dex = sys.argv[1:]
with zipfile.ZipFile(apk) as archive:
    actual = archive.read('classes.dex')
expected = open(dex, 'rb').read()
assert actual == expected, 'packaged classes.dex differs from assembled DEX'
with zipfile.ZipFile(apk) as archive:
    locales = [n for n in archive.namelist() if n.startswith('assets/pixellab_locales/') and n.endswith('.json')]
    assert len(locales) == 17, f'expected 17 offline locale catalogs, found {len(locales)}'
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
print('Verified offline locale catalogs:', len(locales), 'and reviewed Simplified Chinese action labels')
PY
printf 'Final APK: %s\n' "$OUTPUT"
ls -lh "$OUTPUT"
cat "$STAGE/signature_verify.txt" | tail -12
