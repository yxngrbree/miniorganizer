#!/bin/bash
set -euo pipefail

TARGET_DIR="${1:-$HOME/Downloads}"
cd "$TARGET_DIR"

mkdir -p Documents Pictures Media Archives

find . -maxdepth 1 -type f -iname "*.pdf" -o -iname "*.doc*" -o -iname "*.txt" -exec mv {} Documents/ \;
find . -maxdepth 1 -type f -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" -exec mv {} Pictures/ \;
find . -maxdepth 1 -type f -iname "*.mp4" -o -iname "*.mp3" -o -iname "*.mov" -exec mv {} Media/ \;
find . -maxdepth 1 -type f -iname "*.zip" -o -iname "*.tar.gz" -o -iname "*.rar" -exec mv {} Archives/ \;

echo "Organizer finished task in $TARGET_DIR"
