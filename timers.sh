#!/bin/sh

# Gernate timer files via https://systemd-timer.havrlent.com/

sudo cp ./files/timers/* /etc/systemd/system/

# Loop through all files with .timer extension in the files/timers folder
for file in files/timers/*.timer; do
  # Extract filename without extension
  filename="${file##*/}"
  # Remove the extension (.timer)
  pattern="${filename%.*}"

  echo "Enable timer for >${pattern}<"
  sudo systemctl enable $pattern.timer && sudo systemctl start $pattern.timer
done