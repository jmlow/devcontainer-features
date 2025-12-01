#!/bin/bash
set -e

echo "Activate feature 'luarocks'"

apt update && apt install -y luarocks
