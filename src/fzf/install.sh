#!/bin/bash
set -e

echo "Activate feature 'fzf'"

apt update && apt install -y fzf
