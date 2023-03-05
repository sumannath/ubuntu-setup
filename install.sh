#!/bin/bash
sudo apt update
sudo apt upgrade -y

#Install docker
source docker.sh

#Install Oracle VM box
source virtualBox.sh

#Install PHP
source php.sh
