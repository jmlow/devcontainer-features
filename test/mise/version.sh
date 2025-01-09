#!/bin/bash
set -e

source dev-container-features-test-lib

mise --version
check "mise specific version" bash -c "mise --version |& grep -q '2024.5.17'"
reportResults
