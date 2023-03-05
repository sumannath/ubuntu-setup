#!/bin/bash

sudo apt update
sudo apt upgrade -y

# Set filenames
DEB_FILE_NAME=dbeaver-ce.deb

######################## Go! ##########################
wget -O ${DEB_FILE_NAME} https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo apt install -y ./${DEB_FILE_NAME}
rm ${DEB_FILE_NAME}
