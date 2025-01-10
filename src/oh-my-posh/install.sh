#!/bin/bash
set -e

echo "Activate feature 'oh-my-posh'"

curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /usr/local/bin

if [ -n $CONFIG ]; then
	echo 'eval "$(oh-my-posh init bash --config $CONFIG)"' >> /etc/profile
else
	echo 'eval "$(oh-my-posh init bash)"' >> /etc/profile
fi
. /etc/profile
