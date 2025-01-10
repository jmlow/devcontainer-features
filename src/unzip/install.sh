#!/bin/bash
set -e

echo "Activate feature 'unzip'"

apt update && apt install -y unzip
