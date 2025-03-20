#!/bin/bash
set -e

source dev-container-features-test-lib

check "software-properties-common install" bash -c "apt list --installed software-properties* |& grep -qz 'software-properties-common'"
reportResults
