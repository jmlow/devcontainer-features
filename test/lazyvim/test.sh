#!/bin/bash
set -e

source dev-container-features-test-lib

check "lazyvim install" bash -c "nvim -v |& grep -vqz 'command not found'"
reportResults
