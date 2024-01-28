#!/bin/sh

sourceDir=/home/$(whoami)/.cache/plasma_engine_potd/
backupDir=/home/$(whoami)/wallpaper

today=$(date '+%Y%m%d')

targetFolder=$backupDir/$today
mkdir -p $targetFolder

for file in $sourceDir/*; do
    if [ -f "$file" ]; then
        # Extract filename and extension
        filename=$(basename -- "$file")
        filename_noext="${filename%.*}"

        # Initialize extension with fallback to "jpg"
        if [[ $filename == *.* ]]; then
            extension="${filename##*.}"
        else
            extension="jpg"
        fi


        # Add timestamp to filename
        timestamp=$(date '+%H%M%S')
        new_filename="${filename_noext}_${timestamp}.${extension}"

        # Check if a file with the same base name and md5sum exists in the target folder
        base_name_md5sum_match=$(find "$targetFolder" -maxdepth 1 -type f -name "${filename_noext}_*.${extension}" -exec md5sum {} + | md5sum -c --status 2>/dev/null)

        # Copy the file if no matching file is found
        if [ $? -ne 0 ]; then
            cp "$file" "$targetFolder/$new_filename"
        else
            echo "File '$filename' already exists in the target folder with the same base name and content. Skipping."
        fi
    fi
done

rm $backupDir/*/apod*
rm $backupDir/*/natgeo*
rm $backupDir/*/noaa*
