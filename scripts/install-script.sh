#!/usr/bin/env bash
THEME_NAME='tema_plymouth_poul'

# File copy installation
sudo mkdir /usr/share/plymouth/themes/$THEME_NAME
sudo cp -r ../{img,$THEME_NAME*} /usr/share/plymouth/themes/$THEME_NAME
sudo cp journalctl-logger.sh /usr/bin
sudo cp plymouth-journalctl.service /etc/systemd/system/
sudo systemctl enable plymouth-journalctl.service
sudo rm /usr/share/plymouth/themes/$THEME_NAME/img/*.svg
sudo ln -sf /usr/share/plymouth/themes/$THEME_NAME/$THEME_NAME.plymouth /etc/alternatives/default.plymouth
sudo ln -sf /usr/share/plymouth/themes/$THEME_NAME/$THEME_NAME.grub /etc/alternatives/default.plymouth.grub


# if we don't update the initramfs our custom theme won't show at boot
sudo update-initramfs -c -k all
