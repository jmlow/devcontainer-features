#!/bin/bash
set -e

echo "Activate feature 'tmux'"

apt update && apt install -y tmux
