#!/bin/bash
set -e

source dev-container-features-test-lib

check "python3 install" bash -c "python3 --version |& grep -vqz 'command not found'"
check "uv install" bash -c "uv --version |& grep -vqz 'command not found'"
reportResults
