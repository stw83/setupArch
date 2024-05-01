#!/bin/sh

# according to https://github.com/nativefier/nativefier

sudo npm install -g nativefier

# TO-DO
nativefier  --name "To-Do" \
    --icon "files/icons/ToDo.png" \
    --disable-dev-tools \
    --single-instance \
    'https://to-do.live.com/tasks/today'

# Excel
nativefier --name "Excel" \
    --icon "files/icons/Excel.png" \
    --disable-dev-tools \
    'https://www.microsoft365.com/launch/excel?auth=1' 

# Word
nativefier --name "Word" \
    --icon "files/icons/Word.png" \
    --disable-dev-tools \
    'https://www.microsoft365.com/launch/word?auth=1' 