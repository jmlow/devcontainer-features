#!/bin/bash
set -e

echo "Activate feature 'starship'"

curl -sS https://starship.rs/install.sh | sh -s -- -y

echo 'eval "$(starship init bash)"' >> /etc/profile
