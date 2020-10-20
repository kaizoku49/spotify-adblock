#!/bin/bash
sudo apt-get update
sudo apt-get install make
sudo apt install build-essential
sudo apt install curl 
sudo apt-get install libcurl4-gnutls-dev
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
git clone https://github.com/kaizoku49/spotify-adblock-linux.git
cd spotify-adblock-linux
wget -O cef.tar.bz2 http://opensource.spotify.com/cefbuilds/cef_binary_80.0.8%2Bgf96cd1d%2Bchromium-80.0.3987.132_linux64_minimal.tar.bz2
tar -xf cef.tar.bz2 --wildcards '*/include' --strip-components=1
make
sudo make install
