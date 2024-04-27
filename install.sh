#!/usr/bin/env bash

# apt
sudo apt install wget git build-essential fcitx5-chinese-addons gnome-browser-connector gnome-tweaks gnome-shell-extensions -y

# snap

packages=(
    "clion"
    "cmake"
    "code"
    "datagrip"
    "gnome-calendar"
    "go"
    "goland"
    "intellij-idea-ultimate"
    "multipass"
    "postman"
    "pycharm-professional"
    "rustup"
    "telegram-desktop"
    "termius-app"
    "todoist"
    "typora"
    "webstorm"
    "xmind"
)

# Loop through each package and install it using snap
for package in "${packages[@]}"
do
    sudo snap install "$package"
done

# docker-desktop
wget https://desktop.docker.com/linux/main/amd64/145265/docker-desktop-4.29.0-amd64.deb
sudo apt install ./docker-desktop-4.29.0-amd64.deb -y
 
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
./install.sh -i ubuntu -l -N stable
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