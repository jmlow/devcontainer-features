#!/bin/bash
set -e

echo "Activate feature 'software-properties-common'"

apt update && apt install -y software-properties-common
