#!/bin/bash

TEMPLATE_DIR="$HOME/.git-templates"
HOOKS_DIR="$TEMPLATE_DIR/hooks"

mkdir -p "$HOOKS_DIR"

cp hooks/commit-msg "$HOOKS_DIR/commit-msg"
chmod +x "$HOOKS_DIR/commit-msg"

git config --global init.templateDir "$TEMPLATE_DIR"

echo "Global Git joke-of-the-commit hook installed! All future git repos will now include it!"
