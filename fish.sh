#!/bin/sh

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

omf install bobthefish

cp files/config.fish ~/.config/fish/config.fish
