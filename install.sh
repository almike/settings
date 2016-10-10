#!/bin/bash
# install on 14.04, requires sudo

# postgresql 9.5 instead of 9.3
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | apt-key add -

# tmux 2.0 instead of 1.8
add-apt-repository -y ppa:pi-rho/dev
add-apt-repository -y ppa:webupd8team/java

# docker
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list

apt update
apt install -y \
 apt-transport-https ca-certificates \
 python-software-properties software-properties-common \
 git tmux vim terminator silversearcher-ag htop \
 postgresql postgresql-contrib \
 oracle-java8-installer oracle-java8-set-default \
 gnome-shell ubuntu-gnome-desktop \
 smplayer pavucontrol \
 docker-engine

# fix for x265
apt remove -y mplayer2

# open postgresql
sed -i 's/md5/trust/g' /etc/postgresql/9.5/main/pg_hba.conf
/etc/init.d/postgresql restart
sudo -u postgres createuser mickael -w -s
