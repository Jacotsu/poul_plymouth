#!/usr/bin/env bash
THEME_NAME='tema_plymouth_poul'

sudo mkdir /usr/share/plymouth/themes/$THEME_NAME
sudo cp -r ../{img,$THEME_NAME*} /usr/share/plymouth/themes/$THEME_NAME
sudo rm /usr/share/plymouth/themes/$THEME_NAME/img/*.svg
sudo plymouthd --debug > debug_plymouthd
sudo plymouth show-splash
#sudo plymouth ask-for-password --prompt="Insert password" --dont-pause-progress

sudo plymouth update --status="colmsg:0:0:0:0:hey"
sudo plymouth update --status="colmsg:0:0:0:0:test2"
sudo plymouth update --status="colmsg:0:0:0.7:0:test3"
sudo plymouth update --status="colmsg:0:0:0.3:0:test4"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0:0:0.4:test5"
sudo plymouth update --status="colmsg:0:0.056:0:0:success"
sudo plymouth update --status="colmsg:0:0.976:0.043:0.043:failure"
sudo plymouth update --status="colmsg:0:0:0.792:0:warning"
sudo plymouth update --status="colmsg:0:0:0:0:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
sudo plymouth update --status="colmsg:0:0:0:0:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

sleep 10
sudo plymouth quit
