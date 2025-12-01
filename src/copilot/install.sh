#!/bin/bash
set -e

echo "Activate feature 'copilot'"

# Source nvm, node, & npm (installed by nvm feature)
. "$NVM_DIR/nvm.sh"

npm i -g -y @github/copilot
