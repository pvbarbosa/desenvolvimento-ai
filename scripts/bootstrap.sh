#!/usr/bin/env bash
set -euo pipefail

BASE="$HOME/Documents/Desenvolvimento AI"

echo "== Bootstrap: Linking Cursor to centralized rules =="
mkdir -p "$HOME/.cursor"

# Link Cursor rules
rm -f "$HOME/.cursor/rules.md"
ln -s "$BASE/rules/cursor.rules.md" "$HOME/.cursor/rules.md"
echo "Linked: ~/.cursor/rules.md -> $BASE/rules/cursor.rules.md"

# Link MCP folder (optional)
rm -rf "$HOME/.cursor/mcp" 2>/dev/null || true
ln -s "$BASE/mcp" "$HOME/.cursor/mcp"
echo "Linked: ~/.cursor/mcp -> $BASE/mcp"

echo "IMPORTANT: Restart Cursor (Cmd+Q then open again)."
