#!/bin/bash
set -e

source dev-container-features-test-lib

check "rustc install" bash -c "rustc --version |& grep -vqz 'command not found'"
check "cargo install" bash -c "cargo --version |& grep -vqz 'command not found'"
check "cargo-binstall install" bash -c "cargo binstall --version |& grep -vqz 'command not found'"
reportResults
