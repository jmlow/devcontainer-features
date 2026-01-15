#!/bin/bash
set -e

echo "Activate feature 'rust'"

# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Add Rust to PATH for subsequent commands in this script
export PATH="$CARGO_HOME/bin:$PATH"

# Install cargo-binstall
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

# Configure shell environment
cat >> /etc/bash.bashrc <<EOF
export CARGO_HOME="$CARGO_HOME"
export RUSTUP_HOME="$RUSTUP_HOME"
export PATH="$CARGO_HOME/bin:\$PATH"
EOF
