#!/bin/bash
set -e

source dev-container-features-test-lib

# Source nvm to make node available
check "nvm install" bash -c "node -v |& grep -vqz 'command not found'"
reportResults
