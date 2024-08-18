#!/bin/bash

FILE=~/.config/vlc/vlcrc # Path to the vlc config
PATTERN="stereo-mode" # Pattern that should be replaced
REPLACEMENT="stereo-mode=1" # Text that will replace the pattern

# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "File not found: $FILE"
    exit 1
fi

sed -i "/$PATTERN/c\\$REPLACEMENT" "$FILE"

echo -e "\nSuccess..."

