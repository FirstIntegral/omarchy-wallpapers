#!/usr/bin/env bash
# Symlink project backgrounds into the current Omarchy theme's user-backgrounds
# folder so `omarchy theme bg next` sees them. Project stays the only copy.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/backgrounds"
THEME_NAME="$(cat "$HOME/.local/state/omarchy/current/theme.name" 2>/dev/null || true)"
if [[ -z "$THEME_NAME" ]]; then
  echo "no current omarchy theme" >&2
  exit 1
fi

DEST="$HOME/.config/omarchy/backgrounds/$THEME_NAME"
mkdir -p "$DEST"

shopt -s nullglob
n=0
for f in "$SRC"/*.jpg "$SRC"/*.png; do
  ln -sfn "$f" "$DEST/$(basename "$f")"
  n=$((n + 1))
done

echo "linked $n backgrounds -> $DEST (theme $THEME_NAME)"
echo "cycle: omarchy theme bg next"
echo "set:   omarchy theme bg set $SRC/<file>.jpg"
