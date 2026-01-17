#!/bin/bash
set -e

echo "Activate feature 'lazyvim'"

apt update && apt install -y neovim

# Install neovim provider packages
. "$NVM_DIR/nvm.sh"
npm i -g neovim
uv tool install --upgrade pynvim
