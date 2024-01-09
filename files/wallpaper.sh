#!/bin/sh

sourceDir=~/.cache/plasma_engine_potd/
backupDir=~/wallpaper
today=$(date '+%Y%m%d')

targetFolder=$backupDir/$today
mkdir -p $targetFolder

cp $sourceDir/* $targetFolder