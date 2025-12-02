#!/bin/bash
set -e

source dev-container-features-test-lib

check "luarocks install" bash -c "luarocks --version |& grep -vqz 'command not found'"
reportResults
