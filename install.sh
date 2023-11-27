#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install python3 -y
sudo apt install vim -y

bash ./1password.sh
bash ./docker.sh
bash ./jetbrains.sh
