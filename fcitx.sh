#!/bin/bash
sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-rime librime-plugin-lua -y

# sudo mv /etc/profile.d/pop-im-ibus.sh /etc/profile.d/pop-im-ibus.sh.bak
sudo echo -e "INPUT_METHOD=fcitx\nGTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx" | sudo tee /etc/environment.d/fcitx5.conf > /dev/null
sh /etc/profile.d/fcitx5.sh

git clone https://github.com/Mintimate/oh-my-rime $HOME/.local/share/fcitx5/rime

git clone https://github.com/witt-bit/fcitx5-theme-mint.git
sh fcitx5-theme-mint/install.sh

# curl -sSL https://www.debuggerx.com/fcitx5_customizer/fcitx5_customizer.sh | bash -s -- recommend
