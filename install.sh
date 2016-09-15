#!/bin/bash
# install on 14.04
apt update
apt install -y \
	python-software-properties software-properties-common
	git vim terminator silversearcher-ag htop \
	gnome-shell ubuntu-gnome-desktop \
	smplayer pavucontrol
# fix for x265
apt remove mplayer2
# tmux 2.0 instead of 1.8
add-apt-repository -y ppa:pi-rho/dev
apt update
apt install -y tmux

echo "do: git config --global user.email/name"
