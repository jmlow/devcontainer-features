#!/bin/bash
set -e

echo "Activate feature 'build-essential'"

apt update && apt install -y build-essential
