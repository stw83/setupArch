#!/bin/sh

sudo pacman -Sy needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
