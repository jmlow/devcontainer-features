#!/bin/bash
set -e

source dev-container-features-test-lib

check "oh-my-posh install" bash -c "oh-my-posh version |& grep -vqz 'command not found'"
reportResults
