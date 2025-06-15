#!/bin/bash
set -e

source dev-container-features-test-lib

check "starship install" bash -c "starship -V |& grep -vqz 'command not found'"
reportResults
