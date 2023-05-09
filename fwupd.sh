#!/bin/sh

yay -S bluez bluez-utils

sudo systemctl enable bluetooth.service
