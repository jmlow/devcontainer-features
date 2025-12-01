#!/bin/bash
set -e

source dev-container-features-test-lib

check "lsof install" bash -c "lsof -v |& grep -vqz 'command not found'"
reportResults
