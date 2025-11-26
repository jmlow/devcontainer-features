#!/bin/bash
set -e

source dev-container-features-test-lib

check "uv install" bash -c "uv --version |& grep -vqz 'command not found'"
reportResults
