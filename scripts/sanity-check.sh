#!/usr/bin/env bash
set -euo pipefail

BASE="$HOME/Documents/Desenvolvimento AI"
echo "== Sanity check: Desenvolvimento AI =="

# Base folder
[[ -d "$BASE" ]] || { echo "FAIL: Base folder not found: $BASE"; exit 1; }

# Cursor rules symlink
if [[ -L "$HOME/.cursor/rules.md" ]]; then
  TARGET="$(readlink "$HOME/.cursor/rules.md")"
  echo "Cursor rules symlink: OK -> $TARGET"
else
  echo "FAIL: ~/.cursor/rules.md is not a symlink (or not found)."
  exit 1
fi

EXPECTED="$BASE/rules/cursor.rules.md"
if [[ "$TARGET" == "$EXPECTED" ]]; then
  echo "Cursor target: OK"
else
  echo "WARN: Cursor rules target differs:"
  echo "  Expected: $EXPECTED"
  echo "  Actual:   $TARGET"
fi

# MCP symlink (optional)
if [[ -L "$HOME/.cursor/mcp" ]]; then
  MCP_TARGET="$(readlink "$HOME/.cursor/mcp")"
  echo "Cursor MCP symlink: OK -> $MCP_TARGET"
else
  echo "WARN: ~/.cursor/mcp is not a symlink (optional)."
fi

# Git repo
if [[ -d "$BASE/.git" ]]; then
  echo "Git repo: OK"
  (cd "$BASE" && git status -sb) || true
else
  echo "WARN: $BASE is not a git repo."
fi

echo "DONE."
