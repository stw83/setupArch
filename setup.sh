#!/bin/sh

chmod +x *.sh

sudo pacman-mirrors -f5
sudo pacman -Syyu

./yay.sh

./software.sh

./fish.sh

./fwupd.sh

./flameshot.sh

./ssh.sh

./snapper.sh

./setupOnedrive.sh