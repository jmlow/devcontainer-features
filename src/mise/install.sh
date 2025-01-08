#!/bin/sh
set -e

echo "Activate feature 'mise'"

local debug, quiet, install_path

debug=$([[ $DEBUG ]] && 1 || 0)
quiet=$([[ $QUIET ]] && 1 || 0)
install_path=${INSTALL_PATH/~/$_CONTAINER_USER_HOME}

if [ -n $VERSION ]; then
	curl https://mise.run | MISE_DEBUG=$debug MISE_QUIET=$quiet MISE_INSTALL_PATH=$install_path MISE_VERSION=$VERSION sh
else
	curl https://mise.run | MISE_DEBUG=$debug MISE_QUIET=$quiet MISE_INSTALL_PATH=$install_path sh
fi

echo 'eval "$($install_path activate bash)"' >> $_CONTAINER_USER_HOME/.bashrc
echo 'eval "$($install_path activate bash --shims)"' >> $_CONTAINER_USER_HOME/.profile
