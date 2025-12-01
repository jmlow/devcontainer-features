#!/bin/bash
set -e

source dev-container-features-test-lib

check "claude-code install" bash -c "claude -v |& grep -vqz 'command not found'"
reportResults
