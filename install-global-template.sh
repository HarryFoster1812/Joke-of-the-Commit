#!/bin/bash
set -e

TEMPLATE_DIR="$HOME/.git-templates"
HOOKS_DIR="$TEMPLATE_DIR/hooks"
HOOK_URL="https://raw.githubusercontent.com/HarryFoster1812/Joke-of-the-Commit/main/hooks/commit-msg"

echo "Setting up global Git commit-msg joke hook..."

mkdir -p "$HOOKS_DIR"
curl -fsSL "$HOOK_URL" -o "$HOOKS_DIR/commit-msg"
chmod +x "$HOOKS_DIR/commit-msg"

git config --global init.templateDir "$TEMPLATE_DIR"

echo "Global joke commit hook installed!"
echo "All new repos initialised with \`git init\` will now include it automatically."
