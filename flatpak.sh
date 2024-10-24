#!/bin/bash

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
)

# Loop through each package and install it using snap
for package in "${packages[@]}"
do
    sudo flatpak install "$package"
done