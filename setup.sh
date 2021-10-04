#!/bin/bash

export my_dir=$(pwd)

cd
echo "Downloading dependencies..."
git clone https://github.com/akhilnarang/scripts --depth 1
cd scripts
echo "Installing dependencies..."
source setup/arch-manjaro.sh
cd ..
rm -rf scripts
cd "${my_dir}"
if [ ! -f /usr/bin/telegram ]; then
    sudo install bin/telegram /usr/bin
fi
if [ ! -f /usr/bin/github-release ]; then
    sudo install bin/github-release /usr/bin
fi
