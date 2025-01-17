#!/bin/bash
set -e

echo "Activate feature 'sudo'"

apt update && apt install -y sudo
