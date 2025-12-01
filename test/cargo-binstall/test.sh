#!/bin/bash
set -e

source dev-container-features-test-lib

check "cargo-binstall install" bash -c "cargo binstall --version |& grep -vqz 'no such subcommand'"
reportResults
