#!/bin/bash
set -e

source dev-container-features-test-lib

check "tree-sitter-cli install" bash -c "tree-sitter -V |& grep -vqz 'command not found'"
reportResults
