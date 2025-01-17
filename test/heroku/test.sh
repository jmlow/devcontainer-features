#!/bin/bash
set -e

source dev-container-features-test-lib

check "heroku install" bash -c "heroku --version |& grep -vqz 'command not found'"
reportResults
