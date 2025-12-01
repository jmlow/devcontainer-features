#!/bin/bash
set -e

echo "Activate feature 'fdfind'"

apt update && apt install -y fd-find
