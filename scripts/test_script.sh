#!/usr/bin/env bash
THEME_NAME='poul'

sudo mkdir -p /usr/share/plymouth/themes/$THEME_NAME
sudo cp -r ../{img,$THEME_NAME*} /usr/share/plymouth/themes/$THEME_NAME
sudo rm /usr/share/plymouth/themes/$THEME_NAME/img/*.svg
sudo chmod -R u+r+w+X,g+r+X,o+r+X /usr/share/plymouth/themes/$THEME_NAME/
sudo plymouthd --debug --kernel-command-line='quiet splash' > debug_plymouthd
sudo plymouth show-splash
sudo plymouth ask-for-password --prompt="Insert password" --dont-pause-progress

sudo plymouth update --status="colmsg:1:1:1:1:hey"
sudo plymouth update --status="colmsg:1:1:0:1:test2"
sudo plymouth update --status="colmsg:1:1:0.7:1:test3"
sudo plymouth update --status="colmsg:1:1:0.3:1:test4"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:1:1:0.4:test5"
sudo plymouth update --status="colmsg:1:0.156:1:0:success"
sudo plymouth update --status="colmsg:1:0.976:0.043:0.043:failure"
sudo plymouth update --status="colmsg:1:1:0.792:0:warning"
sudo plymouth update --status="colmsg:1:1:1:1:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
sudo plymouth update --status="colmsg:1:1:1:1:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

sleep 10
sudo plymouth quit
