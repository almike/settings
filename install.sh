#!/bin/bash
# install on 17.04, requires sudo

add-apt-repository -y ppa:webupd8team/java

apt update
apt install -y \
 git tmux vim silversearcher-ag htop \
 postgresql postgresql-contrib \
 oracle-java8-installer oracle-java8-set-default \
 smplayer pavucontrol

curl -sSL https://get.docker.com/ | sh

# open postgresql
sed -i 's/md5/trust/g' /etc/postgresql/*/main/pg_hba.conf
/etc/init.d/postgresql restart
sudo -u postgres createuser mickael -w -s
