#!/bin/bash
set -e

source dev-container-features-test-lib

check "zellij install" bash -c "zellij -V |& grep -vqz 'command not found'"
reportResults
