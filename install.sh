#!/bin/bash
sudo apt update
sudo apt upgrade -y

#Install docker
source includes/docker.sh

#Install Oracle VM box
source includes/virtualBox.sh

#Install PHP
source includes/php.sh

#Install DBeaver Community Edition
source includes/dbeaver-ce.sh

#Laravel sail alias
echo "alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'" >> ~/.bashrc

#Install GE-Proton
source includes/ge-proton.sh
