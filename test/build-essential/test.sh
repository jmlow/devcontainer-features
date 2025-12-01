#!/bin/bash
set -e

source dev-container-features-test-lib

check "build-essential install" bash -c "gcc --version |& grep -vqz 'command not found'"
reportResults
