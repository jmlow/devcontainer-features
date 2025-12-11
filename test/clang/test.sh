#!/bin/bash
set -e

source dev-container-features-test-lib

check "clang install" bash -c "clang --version |& grep -vqz 'command not found'"
reportResults
