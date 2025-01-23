#!/bin/bash
set -e

source dev-container-features-test-lib

check "sf install" bash -c "sf --version |& grep -vqz 'command not found'"
reportResults
