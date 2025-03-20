#!/bin/bash
set -e

source dev-container-features-test-lib

check "helix install" bash -c "hx -V |& grep -vqz 'command not found'"
reportResults
