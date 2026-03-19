#!/bin/bash
# Configure Claude Code marketplace and attempt plugin pre-install
# Runs as postCreateCommand

set -e

# Auto-detect workspace path
WORKSPACE_DIR=$(find /workspaces -mindepth 1 -maxdepth 1 -type d | head -1)
SETTINGS_FILE="${WORKSPACE_DIR}/.claude/settings.json"

# Ensure the official marketplace is registered so plugins in
# enabledPlugins auto-install on first authenticated session
echo "Configuring official plugin marketplace..."
claude plugin marketplace add anthropics/claude-code-plugins 2>&1 || echo "  Marketplace may already be configured"

if [ ! -f "$SETTINGS_FILE" ]; then
  echo "No .claude/settings.json found at $SETTINGS_FILE, skipping plugin install"
  exit 0
fi

# Extract enabled plugin names from settings.json
PLUGINS=$(jq -r '.enabledPlugins // {} | to_entries[] | select(.value == true) | .key' "$SETTINGS_FILE")

if [ -z "$PLUGINS" ]; then
  echo "No plugins to install"
  exit 0
fi

# Attempt plugin installation (may fail if not yet authenticated — that's OK,
# Claude Code will auto-install enabled plugins on first authenticated launch)
echo "Attempting plugin pre-install (will auto-install on first launch if this fails)..."
for plugin in $PLUGINS; do
  echo "  Installing $plugin..."
  claude plugin install "$plugin" --scope project 2>&1 || echo "  Skipped: $plugin (will install on first authenticated session)"
done

echo "Plugin setup complete"
