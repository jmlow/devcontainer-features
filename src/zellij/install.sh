#!/bin/bash
set -e

echo "Activate feature 'zellij'"

# Source cargo environment (installed by rustup feature)
. "$CARGO_HOME/env"

cargo binstall zellij
