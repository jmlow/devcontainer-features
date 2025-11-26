#!/bin/bash
set -e

echo "Activate feature 'uv'"

eval "$(/usr/local/bin/mise activate --shims bash)"
mise use --env devcon python@latest
curl -LsSf https://astral.sh/uv/install.sh | sh
