#!/bin/bash
set -e

HOOK_URL="https://raw.githubusercontent.com/HarryFoster1812/Joke-of-the-Commit/main/hooks/commit-msg"

# Find actual .git directory of current repo
GIT_DIR=$(git rev-parse --git-dir)
HOOK_PATH="$GIT_DIR/hooks/commit-msg"

echo "Installing joke commit hook to: $HOOK_PATH"
curl -fsSL "$HOOK_URL" -o "$HOOK_PATH"
chmod +x "$HOOK_PATH"

echo "Git joke-of-the-commit hook installed!"
