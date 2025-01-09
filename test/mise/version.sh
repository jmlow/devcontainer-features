#!/bin/bash
set -e

source dev-container-features-test-lib

check "mise --version" bash -c "mise --version |& grep -vqz 'command not found'"
reportResults
