#!/usr/bin/env bash
THEME_NAME='poul'

# File copy installation
sudo mkdir -p /usr/share/plymouth/themes/$THEME_NAME
sudo cp -r ../{img,$THEME_NAME*} /usr/share/plymouth/themes/$THEME_NAME
sudo rm /usr/share/plymouth/themes/$THEME_NAME/img/*.svg
sudo ln -sf /usr/share/plymouth/themes/$THEME_NAME/$THEME_NAME.plymouth \
    /etc/alternatives/default.plymouth
sudo ln -sf /usr/share/plymouth/themes/$THEME_NAME/$THEME_NAME.grub \
    /etc/alternatives/default.plymouth.grub
sudo chmod -R u+r+w+X,g+r+X,o+r+X poul/

# if we don't update the initramfs our custom theme won't show at boot
sudo update-initramfs -u
