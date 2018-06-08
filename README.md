# Installazione
```
cd scripts
sudo ./install-script.sh
```
Se avete ubuntu dovrebbe funzionare tutto appena eseguito lo script.
Su distro diverse come arch ricordatevi di modificare
`/etc/plymouth/plymouthd.conf` impostando `Theme=tema_plymouth_poul`
e di rigenerare l'initram file con `sudo mkinitcpio -P`
