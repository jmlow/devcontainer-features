#!/bin/bash
set -e

source dev-container-features-test-lib

check "ripgrep install" bash -c "rg --version |& grep -vqz 'command not found'"
reportResults
