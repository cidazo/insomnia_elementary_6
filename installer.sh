#!/bin/bash

curr_path=$(pwd)

echo "Free instalation of insomnia on elementary os 6"
echo "Repo is: https://github.com/manexim/insomnia.git"

sudo apt install -y libgranite-dev libgtk-3-dev libhandy-1-dev meson valac

cd ~/Documents
git clone https://github.com/manexim/insomnia.git
cd insomnia
meson build --prefix=/usr
cd build
ninja
sudo ninja install

cd $curr_path

chmod 600 insomnia.desktop

mv insomnia.desktop ~/.local/share/applications

cd ~/Documents
rm -rf insomnia

echo "Installed as an application"
echo "To uninstall execute: sudo ninja uninstall"
echo
