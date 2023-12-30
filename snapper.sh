#!/bin/sh

sudo umount /.snapshots

sudo rm -r /.snapshots

sudo snapper -c root create-config /

sudo btrfs subvolume delete /.snapshots

sudo mkdir /.snapshots

sudo mount -a

sudo systemctl enable snapper-cleanup.timer

yay -S snap-pac
