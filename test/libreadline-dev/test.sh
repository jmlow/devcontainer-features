#!/bin/bash
set -e

source dev-container-features-test-lib

check "libreadline-dev install" bash -c "dpkg -s libreadline-dev | grep -q 'Status: install ok installed'"
reportResults
