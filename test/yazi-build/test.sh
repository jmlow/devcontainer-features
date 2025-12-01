#!/bin/bash
set -e

source dev-container-features-test-lib

check "yazi-build install" bash -c "yazi -V |& grep -vqz 'command not found'"
reportResults
