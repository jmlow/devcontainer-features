#!/bin/bash
set -e

source dev-container-features-test-lib

check "mise specific version" bash -c "mise --version |& grep -q '2024.5.17'"
reportResults
