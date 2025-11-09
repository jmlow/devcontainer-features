#!/bin/bash
set -e

echo "Activate feature 'wget'"

apt update && apt install -y wget
