#!/bin/bash

#Set filenames
STEAM_DIR=~/.steam
TZ_FILE_NAME=GE-Proton7-50.tar.gz

#Go!
if [ ! -d "$STEAM_DIR" ]; then
    echo "Please install Steam"
else
    wget -O ${TZ_FILE_NAME} https://github.com/GloriousEggroll/proton-ge-custom/releases/download/GE-Proton7-50/GE-Proton7-50.tar.gz
    mkdir -p ~/.steam/root/compatibilitytools.d
    tar -xf ${TZ_FILE_NAME} -C ~/.steam/root/compatibilitytools.d/
    rm ${TZ_FILE_NAME}
fi
