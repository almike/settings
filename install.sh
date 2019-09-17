#!/bin/bash
# install on 17.04, requires sudo

apt update
apt install -y \
 openjdk-11-jdk \
 git tmux vim silversearcher-ag htop \
 postgresql postgresql-contrib \
 smplayer pavucontrol

curl -sSL https://get.docker.com/ | sh

# open postgresql
sed -i 's/md5/trust/g' /etc/postgresql/*/main/pg_hba.conf
/etc/init.d/postgresql restart
sudo -u postgres createuser mickael -w -s
