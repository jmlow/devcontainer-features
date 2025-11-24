#!/bin/bash
set -e

source dev-container-features-test-lib

check "pynvim install" bash -c "uv pip show pynvim |& grep -vqz 'not found'"
reportResults
