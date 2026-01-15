#!/bin/bash
set -e

source dev-container-features-test-lib

check "claude install" bash -c "claude --version |& grep -vqz 'command not found'"
check "github-copilot install" bash -c "copilot --version |& grep -vqz 'command not found'"
check "gemini install" bash -c "gemini --version |& grep -vqz 'command not found'"
reportResults
