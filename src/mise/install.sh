#!/bin/bash
set -e

echo "Activate feature 'mise'"

export MISE_DEBUG=$([[ $DEBUG ]] && echo 1 || echo 0)
export MISE_QUIET=&([[ $QUIET ]] && echo 1 || echo 0)
export MISE_INSTALL_PATH="/usr/local/bin/mise"
if [ -n $VERSION ]; then
	export MISE_VERSION=$VERSION
fi

curl https://mise.run | sh

echo 'eval "$(MISE_INSTALL_PATH activate bash)"' >> /etc/bash.bashrc
echo 'eval "$(MISE_INSTALL_PATH activate bash --shims)"' >> /etc/profile
