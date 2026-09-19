#!/usr/bin/env bash
# Upscale src/*.jpg -> backgrounds/*.jpg at 4x via ~/Apps/realesrgan.
# Target: 5120x2880 JPEG sRGB Q95 (shipped Omarchy 16:9 class).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ESRGAN_ROOT="${ESRGAN_ROOT:-$HOME/Apps/realesrgan}"
BIN="$ESRGAN_ROOT/realesrgan-ncnn-vulkan"
MODEL="${MODEL:-realesrgan-x4plus-anime}"
SRC="$ROOT/src"
DST="$ROOT/backgrounds"
TMP="$ROOT/logs/upscale-tmp"
LOG="$ROOT/logs/upscale.log"

if [[ ! -x "$BIN" ]]; then
  echo "missing realesrgan binary: $BIN" >&2
  exit 1
fi

mkdir -p "$DST" "$TMP"
{
  echo "===== $(date -Iseconds) upscale start model=$MODEL ====="
} >>"$LOG"

shopt -s nullglob
files=("$SRC"/*.jpg "$SRC"/*.jpeg "$SRC"/*.png)
if ((${#files[@]} == 0)); then
  echo "no sources in $SRC" >&2
  exit 1
fi

# Run from the realesrgan dir so the default models/ path resolves.
cd "$ESRGAN_ROOT"

ok=0
fail=0
for f in "${files[@]}"; do
  base="$(basename "${f%.*}")"
  out_jpg="$DST/${base}.jpg"
  if [[ -f "$out_jpg" ]]; then
    w="$(identify -format '%w' "$out_jpg")"
    h="$(identify -format '%h' "$out_jpg")"
    if [[ "$w" == "5120" && "$h" == "2880" ]]; then
      echo "skip $base (already 5120x2880)" | tee -a "$LOG"
      continue
    fi
  fi

  png="$TMP/${base}-x4.png"
  echo "upscale $base -> 4x $MODEL" | tee -a "$LOG"
  if ! "$BIN" -i "$f" -o "$png" -n "$MODEL" -s 4 -f png -m "$ESRGAN_ROOT/models" -v >>"$LOG" 2>&1; then
    echo "FAIL $base" | tee -a "$LOG"
    fail=$((fail + 1))
    continue
  fi

  magick "$png" -colorspace sRGB -quality 95 -interlace Plane "$out_jpg"
  rm -f "$png"
  identify "$out_jpg" | tee -a "$LOG"
  ok=$((ok + 1))
done

rmdir "$TMP" 2>/dev/null || true
echo "done ok=$ok fail=$fail -> $DST" | tee -a "$LOG"
((fail == 0))
