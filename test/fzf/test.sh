#!/bin/bash
set -e

source dev-container-features-test-lib

check "fzf install" bash -c "fzf --version |& grep -vqz 'command not found'"
reportResults
