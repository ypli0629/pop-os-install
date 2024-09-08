#!/bin/bash

sudo apt update
sudo apt upgrade -y && sudo apt dist-upgrade -y
sudo apt install zsh fcitx5-chinese-addons -y

dirs=(source work caffe learn)
for d in "${dirs[@]}"
do
    mkdir -p ~/Desktop/$d
done

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub

# sudo add-apt-repository ppa:graphics-drivers/ppa
# sudo apt update
# sudo apt install nvidia-driver-560 -y

# snap
packages=("com.calibre_ebook.calibre" \
    "com.discordapp.Discord" \
    "com.getpostman.Postman" \
    "com.google.Chrome" \
    "com.obsproject.Studio" \
    "com.qq.QQ" \
    "com.qq.QQmusic" \
    "com.tencent.WeChat" \
    "com.visualstudio.code" \
    "io.github.shiftey.Desktop" \
    "org.blender.Blender" \
    "org.gimp.GIMP" \
    "org.telegram.desktop" \
    "com.termius.Termius" \
    "io.typora.Typora" \
    "net.xmind.XMind" \
    "com.jetbrains.IntelliJ-IDEA-Ultimate" )

# Loop through each package and install it using snap
for package in "${packages[@]}"
do
    sudo flatpak install "$package"
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
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb
sudo apt install .//docker-desktop-amd64.deb -y

# clash-rev
wget https://launchpadlibrarian.net/704701345/libjavascriptcoregtk-4.0-18_2.43.3-1_amd64.deb
wget https://launchpadlibrarian.net/704701349/libwebkit2gtk-4.0-37_2.43.3-1_amd64.deb
sudo dpkg -i ./libjavascriptcoregtk-4.0-18_2.43.3-1_amd64.deb ./libwebkit2gtk-4.0-37_2.43.3-1_amd64.deb
wget https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v1.6.0/clash-verge_1.7.7_amd64.deb
sudo apt install ./clash-verge_1.7.7_amd64.deb

# switchhosts
wget https://github.com/oldj/SwitchHosts/releases/download/v4.2.0-beta/SwitchHosts_linux_amd64_4.2.0.6105.deb
sudo apt install ./SwitchHosts_linux_amd64_4.2.0.6105.deb -y

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"