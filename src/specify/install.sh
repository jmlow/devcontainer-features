#!/bin/bash
set -e

echo "Activate feature 'specify'"

uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
