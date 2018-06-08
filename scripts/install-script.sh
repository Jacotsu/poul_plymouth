# File copy installation
sudo mkdir /usr/share/plymouth/themes/tema_plymouth_poul
sudo cp -r ../{img,tema_plymouth_poul*} /usr/share/plymouth/themes/tema_plymouth_poul
sudo ln -sf /usr/share/plymouth/themes/tema_plymouth_poul/tema_plymouth_poul.plymouth /etc/alternatives/default.plymouth
sudo ln -sf /usr/share/plymouth/themes/tema_plymouth_poul/tema_plymouth_poul.grub /etc/alternatives/default.plymouth.grub

cp /lib/lsb/init-functions ../backups/init-functions.bak

# if we don't update the initramfs our custom theme won't show at boot
sudo update-initramfs -c -k all
