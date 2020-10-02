#!/bin/bash
sudo apt-get update
sudo apt-get install make
sudo apt install build-essential
sudo apt-get install libcurl4-gnutls-dev
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
git clone https://github.com/kaizoku49/spotify-adblock-linux.git
cd spotify-adblock-linux
make
sudo make install
