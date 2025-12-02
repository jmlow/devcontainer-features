#!/bin/bash
set -e

echo "Activate feature 'tree-sitter-cli'"

# Source cargo environment (installed by rustup feature)
. "$CARGO_HOME/env"

cargo binstall tree-sitter-cli
