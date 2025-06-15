#!/bin/bash
set -e

echo "Activate feature 'oh-my-posh'"

curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /usr/local/bin
