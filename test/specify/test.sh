#!/bin/bash
set -e

source dev-container-features-test-lib

check "specify install" bash -c "specify check |& grep -vqz 'command not found'"
reportResults
