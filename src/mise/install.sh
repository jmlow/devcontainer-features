#!/bin/bash
set -e

echo "Activate feature 'mise'"

export MISE_DEBUG=0
export MISE_QUIET=1
export MISE_INSTALL_PATH="/usr/local/bin/mise"
if [ -n $VERSION ]; then
	export MISE_VERSION=$VERSION
fi

curl https://mise.run | sh

echo 'eval "$(/usr/local/bin/mise activate bash --shims)"' >> /etc/profile
echo 'eval "$(/usr/local/bin/mise activate bash)"' >> /etc/bash.bashrc
