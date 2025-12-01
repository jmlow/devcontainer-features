#!/bin/bash
set -e

source dev-container-features-test-lib

check "rustup install" bash -c "rustc --version |& grep -vqz 'command not found'"
reportResults
