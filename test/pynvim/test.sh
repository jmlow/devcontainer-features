#!/bin/bash
set -e

source dev-container-features-test-lib

check "pynvim install" bash -c "uv tool list | grep -q pynvim"
reportResults
