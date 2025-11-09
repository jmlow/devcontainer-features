#!/bin/bash
set -e

echo "Activate feature 'lsof'"

apt update && apt install -y lsof
