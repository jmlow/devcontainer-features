#!/bin/bash
set -e

echo "Activate feature 'claude-code'"

# Source nvm, node, & npm (installed by nvm feature)
. "$NVM_DIR/nvm.sh"

npm i -g @anthropic-ai/claude-code
