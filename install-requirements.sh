#!/usr/bin/env bash

set -e

if [[ "$EUID" -ne 0 ]]; then
	echo "Run this script as root"
	exit 1
fi

asdf_version="v0.18.0"
arch="amd64"

if [[ -e /etc/debian_version ]]; then
	apt-get install -y curl git libssl-dev automake autoconf libncurses-dev make gcc unzip
fi

if command -v dnf &> /dev/null; then
	dnf install -y curl git openssl-devel automake autoconf ncurses-devel make gcc-c++ unzip
fi

wget -P /tmp https://github.com/asdf-vm/asdf/releases/download/"${asdf_version}/asdf-"${asdf_version}-linux-"${arch}".tar.gz

tar fx /tmp/asdf-"${asdf_version}"-linux-"${arch}".tar.gz -C /tmp
sudo mv /tmp/asdf /usr/local/bin

asdf plugin add erlang
asdf plugin add elixir
asdf install erlang latest
asdf install elixir latest

echo "Run the command: export PATH=$PATH:$HOME/.asdf/shims"
