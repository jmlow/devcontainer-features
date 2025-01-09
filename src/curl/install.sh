#!/bin/bash
set -e

echo "Activate feature 'curl'"

apt update && apt install -y curl
