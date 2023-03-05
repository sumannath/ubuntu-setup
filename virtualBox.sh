#!/bin/bash

#Set filenames
DEB_FILE_NAME=virtualbox.deb
EXT_FILE_NAME=Oracle_VM_VirtualBox_Extension_Pack-7.0.6a-155176.vbox-extpack

#Go!
wget -O ${DEB_FILE_NAME} https://download.virtualbox.org/virtualbox/7.0.6/virtualbox-7.0_7.0.6-155176~Ubuntu~jammy_amd64.deb
sudo apt install -y ./${DEB_FILE_NAME}
sudo usermod -a -G vboxusers $USER
rm ${DEB_FILE_NAME}
wget -O ${EXT_FILE_NAME} https://download.virtualbox.org/virtualbox/7.0.6/${EXT_FILE_NAME}
sudo VBoxManage extpack install --accept-license=33d7284dc4a0ece381196fda3cfe2ed0e1e8e7ed7f27b9a9ebc4ee22e24bd23c --replace ${EXT_FILE_NAME}
rm ${EXT_FILE_NAME}
