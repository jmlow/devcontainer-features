#!/bin/bash
set -e

source dev-container-features-test-lib

check "copilot install" bash -c "copilot -v |& grep -vqz 'command not found'"
reportResults
