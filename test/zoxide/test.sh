#!/bin/bash
set -e

source dev-container-features-test-lib

check "zoxide install" bash -c "which zoxide"
reportResults
