#!/bin/bash
set -e

echo "Activate feature 'zoxide'"

# Source cargo environment (installed by rustup feature)
. "$CARGO_HOME/env"

cargo binstall zoxide
