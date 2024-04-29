#!/bin/bash

paths=(source work caffe learn)
for path in "${paths[@]}"
do
    mkdir -p "~/Desktop/$path"
done

mkdir -p ~/Desktop/source
mkdir -p ~/Desktop/work
mkdir -p ~/Desktop/caffe
mkdir -p ~/Desktop/learn

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-driver-550 -y

# apt
sudo apt install wget curl git zsh build-essential fcitx5-chinese-addons gnome-browser-connector gnome-tweaks gnome-shell-extensions -y

# snap
packages=("clion" "cmake" "code" "datagrip" "gnome-calendar" "go" "goland" "intellij-idea-ultimate" "multipass" \
    "postman" "pycharm-professional" "rustup" "telegram-desktop" "termius-app" "todoist" "typora" "webstorm" "xmind")

# Loop through each package and install it using snap
for package in "${packages[@]}"
do
    sudo snap install "$package" --classic
done

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
wget https://desktop.docker.com/linux/main/amd64/145265/docker-desktop-4.29.0-amd64.deb
sudo apt install ./docker-desktop-4.29.0-amd64.deb -y

# clash-rev
wget https://launchpadlibrarian.net/704701345/libjavascriptcoregtk-4.0-18_2.43.3-1_amd64.deb
wget https://launchpadlibrarian.net/704701349/libwebkit2gtk-4.0-37_2.43.3-1_amd64.deb
sudo dpkg -i ./libjavascriptcoregtk-4.0-18_2.43.3-1_amd64.deb ./libwebkit2gtk-4.0-37_2.43.3-1_amd64.deb
wget https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v1.6.0/clash-verge_1.6.0_amd64.deb
sudo apt install ./clash-verge_1.6.0_amd64.deb

# grub theme
wget https://raw.githubusercontent.com/AdisonCavani/distro-grub-themes/master/themes/ubuntu.tar
sudo mkdir -p /boot/grub/themes/ubuntu
sudo tar -xvf ./ubuntu.tar -C /boot/grub/themes/ubuntu
sudo echo "GRUB_THEME=/boot/grub/themes/ubuntu/theme.txt" >> /etc/default/grub
sudo update-grub

# switchhosts
wget https://github.com/oldj/SwitchHosts/releases/download/v4.2.0-beta/SwitchHosts_linux_amd64_4.2.0.6105.deb
sudo apt install ./SwitchHosts_linux_amd64_4.2.0.6105.deb -y

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

# gtk themes
mkdir themes

cd themes
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh -i simple -l -N stable
cd ..

#git clone https://github.com/vinceliuice/grub2-themes.git
#cd grub2-themes
#sudo ./install.sh -t vimix -s 2k -b
#cd ..

git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh -b
cd ..

git clone https://github.com/vinceliuice/WhiteSur-wallpapers.git
cd WhiteSur-wallpapers
./install-wallpapers.sh
sudo ./install-gnome-backgrounds.sh
cd ..

git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors
sudo ./install.sh
cd ..

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
