#!/bin/bash
set -e

echo "Activate feature 'python'"

# Install Python 3
apt install -y python3

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
