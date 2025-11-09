#!/bin/bash
set -e

source dev-container-features-test-lib

check "tmux install" bash -c "tmux -V |& grep -vqz 'command not found'"
reportResults
