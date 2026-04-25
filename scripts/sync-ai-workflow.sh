#!/bin/zsh

set -euo pipefail

SOURCE_DIR="${1:-$HOME/Documents/Obsidian Vault/我的AI工作流}"
TARGET_DIR="${2:-$PWD/content/我的AI工作流}"

if [[ ! -d "$SOURCE_DIR" ]]; then
  echo "Source directory not found: $SOURCE_DIR" >&2
  exit 1
fi

mkdir -p "$TARGET_DIR"

rsync -av --delete \
  --include='*/' \
  --include='*.md' \
  --exclude='*' \
  "$SOURCE_DIR"/ "$TARGET_DIR"/

echo "Synced Markdown from $SOURCE_DIR to $TARGET_DIR"
