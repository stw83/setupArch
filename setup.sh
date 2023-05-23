#!/bin/sh

chmod +x *.sh

sudo pacman-mirrors -f5
sudo pacman -Syyu
sudo pacman -Syu yay

yay -Syu vnstat

sudo systemctl enable vnstat.service
sudo systemctl start vnstat.service

./yay.sh

./software.sh

./fish.sh

./fwupd.sh

./flameshot.sh

./ssh.sh
