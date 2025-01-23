#!/bin/bash
set -e

echo "Activate feature 'sf'"

mise use -g node@22.13.1
mise x -- npm i -g @salesforce/cli
