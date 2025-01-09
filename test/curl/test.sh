#!/bin/bash
set -e

source dev-container-features-test-lib

check "curl install" bash -c "curl -V |& grep -vqz 'command not found'"
reportResults
