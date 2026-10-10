#!/usr/bin/env bash
set -euo pipefail
ROOT=/workspace/pixellabplus_custom
ORIGINAL=/home/ubuntu/upload/PixelLabPlus_1.9.5.apk
DEX=$ROOT/build/localization/PixelLabPlus-classes.dex
LOCALES=$ROOT/locale_assets/pixellab_locales
STAGE=$ROOT/build/final
UNSIGNED=$STAGE/PixelLabPlus_1.9.5_offline_unsigned.apk
ALIGNED=$STAGE/PixelLabPlus_1.9.5_offline_aligned.apk
OUTPUT=/workspace/PixelLabPlus_1.9.5_offline_language_splash.apk
BUILD_TOOLS=/home/ubuntu/Android/Sdk/build-tools/37.0.0
KEYSTORE=/home/ubuntu/.android/debug.keystore

[ -f "$ORIGINAL" ] || { echo "Missing original APK: $ORIGINAL" >&2; exit 1; }
[ -f "$DEX" ] || { echo "Missing assembled DEX: $DEX" >&2; exit 1; }
[ -d "$LOCALES" ] || { echo "Missing generated locale catalogs: $LOCALES" >&2; exit 1; }
COUNT=$(find "$LOCALES" -maxdepth 1 -type f -name '*.json' | wc -l)
[ "$COUNT" -eq 17 ] || { echo "Expected 17 translated locale catalogs, found $COUNT" >&2; exit 1; }

rm -rf "$STAGE"
mkdir -p "$STAGE/overlay/classes" "$STAGE/overlay/assets/pixellab_locales"
cp "$DEX" "$STAGE/overlay/classes.dex"
cp "$LOCALES"/*.json "$STAGE/overlay/assets/pixellab_locales/"
cp "$ORIGINAL" "$UNSIGNED"
# Remove old v1 signature records if present; the final APK receives a fresh signature.
zip -q -d "$UNSIGNED" 'META-INF/*.RSA' 'META-INF/*.SF' 'META-INF/*.DSA' 'META-INF/*.EC' 'META-INF/*.RS' 'META-INF/MANIFEST.MF' >/dev/null 2>&1 || true
(
  cd "$STAGE/overlay"
  zip -q "$UNSIGNED" classes.dex assets/pixellab_locales/*.json
)
"$BUILD_TOOLS/zipalign" -f 4 "$UNSIGNED" "$ALIGNED"
"$BUILD_TOOLS/apksigner" sign \
  --ks "$KEYSTORE" \
  --ks-key-alias androiddebugkey \
  --ks-pass pass:android \
  --key-pass pass:android \
  --out "$OUTPUT" "$ALIGNED"
"$BUILD_TOOLS/zipalign" -c 4 "$OUTPUT"
"$BUILD_TOOLS/apksigner" verify --verbose --print-certs "$OUTPUT" > "$STAGE/signature_verify.txt"
unzip -tq "$OUTPUT"
aapt dump badging "$OUTPUT" | sed -n '1,3p' > "$STAGE/badging.txt"
python3 - "$OUTPUT" <<'PY'
import json, sys, zipfile
apk=sys.argv[1]
with zipfile.ZipFile(apk) as z:
    names=[n for n in z.namelist() if n.startswith('assets/pixellab_locales/') and n.endswith('.json')]
    assert len(names)==17, f'expected 17 catalogs, got {len(names)}'
    counts={}
    for name in names:
        obj=json.loads(z.read(name).decode('utf-8'))
        assert obj.get('locale')
        assert obj.get('resources')
        counts[name.rsplit('/',1)[-1]]=len(obj['resources'])
    print('Verified locale catalogs:', len(names), 'resource counts:', min(counts.values()), '-', max(counts.values()))
PY
printf 'Final APK: %s\n' "$OUTPUT"
ls -lh "$OUTPUT"
cat "$STAGE/badging.txt"
cat "$STAGE/signature_verify.txt" | tail -8
