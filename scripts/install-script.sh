# File copy installation
sudo mkdir /usr/share/plymouth/themes/tema_plymouth_poul
sudo cp -r ../{img,poul-plymouth*} /usr/share/plymouth/themes/tema_plymouth_poul
sudo ln -sf /usr/share/plymouth/themes/tema_plymouth_poul/poul-plymouth.plymouth /etc/alternatives/default.plymouth
sudo ln -sf /usr/share/plymouth/themes/tema_plymouth_poul/poul-plymouth.grub /etc/alternatives/default.plymouth.grub

cp /lib/lsb/init-functions ../backups/init-functions.bak

# if we don't update the initramfs our custom theme won't show at boot
sudo update-initramfs -c -k all
