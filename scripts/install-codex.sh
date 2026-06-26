#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if ! command -v bun >/dev/null 2>&1; then
  echo "Installing Bun..."
  curl -fsSL https://bun.sh/install | bash
  export PATH="$HOME/.bun/bin:$PATH"
fi

./setup --host codex --prefix

echo ""
echo "Codex GStack installed."
echo "Restart Codex or open a new session, then use commands like gstack-review, gstack-qa and gstack-ship."
