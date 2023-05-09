#!/bin/sh

yay -Syu

yay -S yakuake
yay -S fish
yay -S keepassxc

yay -S docker
sudo systemctl enable docker
sudo usermond -aG docker $"(whoami)"

yay -S visual-studio-code-bin

yay -S nodejs
yay -S npm

yay -S flameshot

yay -S snapper

yay -S linux-headers

yay -S vnstat

yay -S tlp tlpui