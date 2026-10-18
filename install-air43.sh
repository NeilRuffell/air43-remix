#!/bin/bash
set -e
SOURCE="$(cd "$(dirname "$0")" && pwd)/desktoptheme/air43remix"
DEST="$HOME/.local/share/plasma/desktoptheme/Air43Remix"

test -f "$SOURCE/metadata.json" || exit 1
test ! -e "$DEST" || {
    echo "Air43Remix already installed. Nothing overwritten."
    exit 1
}

mkdir -p "$(dirname "$DEST")"
cp -a "$SOURCE" "$DEST"
echo "Installed Air 4.3 Remix."
