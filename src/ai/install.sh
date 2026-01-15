#!/bin/bash
set -e

echo "Activate feature 'ai'"

# Source nvm, node, & npm (installed by nvm feature)
. "$NVM_DIR/nvm.sh"

# Install AI coding assistant CLIs
npm i -g @anthropic-ai/claude-code
npm i -g @github/copilot
npm i -g @google/gemini-cli
