#!/bin/bash
set -e

source dev-container-features-test-lib

check "wget install" bash -c "wget -V |& grep -vqz 'command not found'"
reportResults
