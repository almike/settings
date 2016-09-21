#!/bin/bash
# install on 14.04
# requires sudo
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | apt-key add -
apt update
apt install -y \
 python-software-properties software-properties-common \
 git vim terminator silversearcher-ag htop \
 postgresql postgresql-contrib \
 gnome-shell ubuntu-gnome-desktop \
 smplayer pavucontrol
# fix for x265
apt remove -y mplayer2
# tmux 2.0 instead of 1.8
add-apt-repository -y ppa:pi-rho/dev
apt update
apt install -y tmux
# open postgresql
sed -i 's/md5/trust/g' /etc/postgresql/9.5/main/pg_hba.conf
/etc/init.d/postgresql restart
sudo -u postgres createuser mickael -w -s
