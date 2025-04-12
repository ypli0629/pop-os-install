#!/bin/bash

sudo apt update
sudo apt upgrade -y && sudo apt dist-upgrade -y
sudo apt install zsh -y

mkdir -p ~/Desktop/source
mkdir -p ~/Desktop/work
mkdir -p ~/Desktop/caffe
mkdir -p ~/Desktop/learn

# git
git config --global user.email "liyapeng0629@gmail.com"
git config --global user.name "ypli0629"
git config --global credential.helper store

# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo --user
# flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub --user

git clone https://github.com/ypli0629/astronvim_config.git ~/.config/nvim

# docker-desktop
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb
sudo apt install .//docker-desktop-amd64.deb -y

# clash-rev
# wget https://launchpadlibrarian.net/704701345/libjavascriptcoregtk-4.0-18_2.43.3-1_amd64.deb
# wget https://launchpadlibrarian.net/704701349/libwebkit2gtk-4.0-37_2.43.3-1_amd64.deb
# sudo dpkg -i ./libjavascriptcoregtk-4.0-18_2.43.3-1_amd64.deb ./libwebkit2gtk-4.0-37_2.43.3-1_amd64.deb
wget https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v2.2.3/Clash.Verge_2.2.3_amd64.deb
sudo apt install ./Clash.Verge_2.2.3_amd64.deb

# switchhosts
wget https://github.com/oldj/SwitchHosts/releases/download/v4.2.0-beta/SwitchHosts_linux_amd64_4.2.0.6105.deb
sudo apt install ./SwitchHosts_linux_amd64_4.2.0.6105.deb -y
