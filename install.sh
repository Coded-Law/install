#!/bin/bash

sudo apt update && sudo apt full-upgrade -y
sudo apt install python3 -y

# Install 1password
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list
sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
 curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
 sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
 curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
 sudo apt update && sudo apt install 1password -y

# Install Jetbrains Toolbox
cd ~/Downloads
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.1.1.18388.tar.gz
sudo tar -xvzf ~/Downloads/jetbrains-toolbox-1.26.1.13138.tar.gz

sudo mv jetbrains-toolbox-2.1.1.18388 /opt/

cd /opt/jetbrains-toolbox-2.1.1.18388/

rm -rf jetbrains-toolbox-2.1.1.18388.tar.gz

./jetbrains-toolbox
