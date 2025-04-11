#!/bin/bash
sudo apt install fcitx5-chinese-addons -y

sudo mv /etc/profile.d/pop-im-ibus.sh /etc/profile.d/pop-im-ibus.sh.bak
sudo echo -e "export INPUT_METHOD=fcitx\nexport GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx" | sudo tee /etc/profile.d/fcitx5.sh > /dev/null
sh /etc/profile.d/fcitx5.sh

curl -sSL https://www.debuggerx.com/fcitx5_customizer/fcitx5_customizer.sh | bash -s -- recommend
