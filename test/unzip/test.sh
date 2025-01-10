#!/bin/bash
set -e

source dev-container-features-test-lib

check "unzip install" bash -c "unzip -v |& grep -vqz 'command not found'"
reportResults
