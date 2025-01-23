#!/bin/bash
set -e

echo "Activate feature 'sf'"

curl -O https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/sf-linux-x64.tar.gz
ABS_SF_DIR=${SF_DIR/\~/$_REMOTE_USER_HOME}
mkdir -p $ABS_SF_DIR
tar xf sf-linux-x64.tar.gz -C $ABS_SF_DIR --strip-components 1
rm sf-linux-x64.tar.gz
echo "PATH=${SF_DIR}/bin:\$PATH" >> $_REMOTE_USER_HOME/.bashrc
