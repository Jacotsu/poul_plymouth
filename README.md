# Installazione

## Ubuntu disco dingo
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3E54FA70
sudo add-apt-repository ppa:jacotsu/plymouth-theme-poul
sudo apt install plymouth-theme-poul
```
## Others
```
cd scripts
sudo ./install-script.sh
```
Se avete ubuntu dovrebbe funzionare tutto appena eseguito lo script.
Su distro diverse come arch ricordatevi di modificare
`/etc/plymouth/plymouthd.conf` impostando `Theme=tema_plymouth_poul`,
modificare `/etc/mkinitcpi.conf` e aggiungere uno dei seguenti hooks:
- `plymouth`: Se non usate la cifratura luks da montare all'avvio
- `plymouth-encrypt`: Se usate la cifratura luks da montare all'avvio

Aggiungere l'opzione `splash` ai parametri del kernel

Rigenerare l'initram file con `sudo mkinitcpio -P`

Se volete avere un console log semi-funzionante a schermo dovete usare
il branch `boot-console`
