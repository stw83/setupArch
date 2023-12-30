#!/bin/sh

yay -S bluez bluez-utils fwupd

sudo systemctl enable bluetooth.service
