# Install Jetbrains Toolbox
wget -P ~/Downloads https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.1.1.18388.tar.gz
sudo tar -xvzf ~/Downloads/jetbrains-toolbox-2.1.1.18388.tar.gz

sudo mv ~/Downloads/jetbrains-toolbox-2.1.1.18388 /opt/

cd /opt/jetbrains-toolbox-2.1.1.18388/

rm -rf ~/Downloads/jetbrains-toolbox-2.1.1.18388.tar.gz

./jetbrains-toolbox
