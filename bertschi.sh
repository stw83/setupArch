#!/bin/sh

yay -S slack-desktop zoom adobe-source-han-sans-tw-fonts adobe-source-han-sans-cn-fonts noto-fonts noto-fonts-emoji ttf-droid spectacle fuse2 ms-outlook-nativefier clamav


sudo cp files/clamd.conf /etc/clamav/clamd.conf
sudo cp files/virus-event.bash /etc/clamav/virus-event.bash

sudo chmod +x /etc/clamav/virus-event.bash

sudo systemctl enable clamav-freshclam.service

sudo systemctl enable --now clamav-daemon.service


sudo cp files/clamav-weekly.* /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable clamav-weekly.timer
