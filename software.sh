#!/bin/sh

yay -S vnstat
# activate vnstat
sudo systemctl enable vnstat.service
sudo systemctl start vnstat.service


yay -S yakuake docker fish keepassxc visual-studio-code-bin nodejs npm flameshot snapper linux-headers vnstat tlp tlpui onedrive-abraunegg onedrivegui-git discord portfolio-performance-bin btop tldr neovim frpintd firefox chromium autorandr jetbrains-toolbox yt-dlp vlc fast gwenview

# configure docker
sudo systemctl enable docker
sudo usermond -aG docker $"(whoami)"

yay -S make pkgconf

# open browser to download tws
chromium https://www.interactivebrokers.com/en/trading/tws-updateable-latest.php