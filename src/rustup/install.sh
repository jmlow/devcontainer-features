#!/bin/bash
set -e

echo "Activate feature 'rustup'"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

cat >> /etc/bash.bashrc <<EOF
export CARGO_HOME="$CARGO_HOME"
export RUSTUP_HOME="$RUSTUP_HOME"
export PATH="$CARGO_HOME/bin:$PATH"
EOF
