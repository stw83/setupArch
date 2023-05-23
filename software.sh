#!/bin/sh

yay -Syu

yay -S docker
sudo systemctl enable docker
sudo usermond -aG docker $"(whoami)"

yay -S make pkgconf

yay -S yakuake fish keepassxc visual-studio-code-bin nodejs npm flameshot snapper linux-headers vnstat tlp tlpui onedrive-abraunegg discord portfolio-performance-bin

yay -S frpintd
