#!/bin/bash
set -e

source dev-container-features-test-lib

check "lazygit install" bash -c "lazygit --version |& grep -vqz 'command not found'"
reportResults
