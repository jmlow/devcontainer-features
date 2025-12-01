#!/bin/bash
set -e

echo "Activate feature 'python3'"

apt update && apt install -y python3
