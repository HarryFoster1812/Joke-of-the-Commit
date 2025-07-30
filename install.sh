#!/bin/bash

# Copy the commit-msg hook into the current Git repo
HOOK_DIR=".git/hooks"
HOOK_FILE="commit-msg"

if [ ! -d "$HOOK_DIR" ]; then
    echo "Not a Git repository."
    exit 1
fi

cp hooks/$HOOK_FILE $HOOK_DIR/$HOOK_FILE
chmod +x $HOOK_DIR/$HOOK_FILE

echo "Git joke-of-the-commit hook installed!"
