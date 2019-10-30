#!/bin/bash

if [ -z "$1" ] 
  then
    echo "Need to add 1 argument: domain name"
fi 
git config --global user.email "22254235+crislin2046@users.noreply.github.com"
git config --global user.name "Cris Stringfellow"
sudo apt-get update && sudo apt-get -y upgrade
sudo apt -y install curl nodejs certbot vim 
git config --global core.editor "vim"
sudo update-alternatives --config editor
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
sudo bash ./nodesource_setup.sh
sudo apt -y install nodejs build-essential
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
bash ./install_nvm.sh
source $HOME/.profile
nvm install --lts
sudo apt -y install dnsutils whois
sudo apt autoremove
if [ -z "$1" ] 
  then
    echo "skipping TLS cert issue"
  else
	sudo certbot certonly --manual --preferred-challenges dns --server https://acme-v02.api.letsencrypt.org/directory --manual-public-ip-logging-ok -d "*.$1" -d $1
fi 
sudo npm i -g serve nodemon pm2
sudo apt install psmisc htop nethogs
sudo apt install libcgroup1 cgroup-tools
