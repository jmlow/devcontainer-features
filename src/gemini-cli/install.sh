#!/bin/bash
set -e

echo "Activate feature 'gemini-cli'"

# Source nvm, node, & npm (installed by nvm feature)
. "$NVM_DIR/nvm.sh"

npm i -g -y @google/gemini-cli
