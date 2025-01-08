#!/bin/bash
set -e

source dev-container-features-test-lib

check "mise --version" bash -c "mise --version | (grep 'command not found' && exit 1)"
reportResults
