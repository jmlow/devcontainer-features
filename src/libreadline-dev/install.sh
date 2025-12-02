#!/bin/bash
set -e

echo "Activate feature 'libreadline-dev'"

apt update && apt install -y libreadline-dev
