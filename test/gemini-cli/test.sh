#!/bin/bash
set -e

source dev-container-features-test-lib

check "gemini-cli install" bash -c "gemini -v |& grep -vqz 'command not found'"
reportResults
