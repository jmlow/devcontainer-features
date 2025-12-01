#!/bin/bash
set -e

echo "Activate feature 'yazi-build'"

# Source cargo environment (installed by rustup feature)
. "$CARGO_HOME/env"

cargo binstall yazi-build
