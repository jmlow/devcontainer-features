#!/bin/bash
set -e

echo "Activate feature 'clang'"

apt update && apt install -y clang libclang-dev
