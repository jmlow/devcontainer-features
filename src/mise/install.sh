#!/bin/bash
set -e

echo "Activate feature 'mise'"

export MISE_DEBUG=$([[ $DEBUG ]] && echo 1 || echo 0)
export MISE_QUIET=&([[ $QUIET ]] && echo 1 || echo 0)
export MISE_INSTALL_PATH="${INSTALL_PATH/\~/$_REMOTE_USER_HOME}"

if [ -n $VERSION ]; then
	curl https://mise.run | MISE_VERSION=$VERSION sh
else
	curl https://mise.run | sh
fi

echo 'eval "$(MISE_INSTALL_PATH activate bash)"' >> $_CONTAINER_USER_HOME/.bashrc
echo 'eval "$(MISE_INSTALL_PATH activate bash --shims)"' >> $_CONTAINER_USER_HOME/.profile
