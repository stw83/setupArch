#!/bin/sh


mkdir -p ~/.config/systemd/user/
cp files/ssh-agent.service ~/.config/systemd/user/ssh-agent.service

systemctl enable --user ssh-agent