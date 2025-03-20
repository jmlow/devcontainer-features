#!/bin/bash
set -e

echo "Activate feature 'helix'"

add-apt-repository -y ppa:maveonair/helix-editor
apt update
apt install -y helix
