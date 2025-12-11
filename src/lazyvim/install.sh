#!/bin/bash
set -e

echo "Activate feature 'lazyvim'"

apt install -y neovim

# Source nvm, node, & npm (installed by nvm feature)
. "$NVM_DIR/nvm.sh"

npm i -g neovim
