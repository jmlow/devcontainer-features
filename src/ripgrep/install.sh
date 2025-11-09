#!/bin/bash
set -e

echo "Activate feature 'ripgrep'"

apt update && apt install -y ripgrep
