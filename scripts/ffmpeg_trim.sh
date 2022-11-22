#!/bin/bash
# Extracts a clip from a video file using ffmpeg
oldFile=$1
newFile=$(sed -E 's/(..*)(\.[a-zA-Z0-9]*)/\1_trimmed\2/g' <<< $oldFile)
if [ "$@" -eq 2 ]; then
    # Start time provided
    ffmpeg -ss $2 -i "$oldFile" -c:v copy -c:a copy "$newFile"
elif [ "$#" -eq 3 ]; then
    # Start and end time provided
    ffmpeg -ss $2 -to $3 -i "$oldFile" -c:v copy -c:a copy "$newFile"
else
    echo "Syntax: $0 <filename> <start> <optional end>"
    echo "Time syntax: hh:mm:ss"
fi

