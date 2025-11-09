#!/bin/bash
set -e

source dev-container-features-test-lib

check "fdfind install" bash -c "fdfind --version |& grep -vqz 'command not found'"
reportResults
