#!/bin/bash
set -e

echo "Activate feature 'ai'"

# Source nvm, node, & npm (installed by nvm feature)
. "$NVM_DIR/nvm.sh"

# Install AI coding assistant CLIs
npm i -g @anthropic-ai/claude-code @github/copilot @google/gemini-cli
