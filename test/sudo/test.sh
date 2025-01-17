#!/bin/bash
set -e

source dev-container-features-test-lib

check "sudo install" bash -c "sudo |& grep -vqz 'command not found'"
reportResults
