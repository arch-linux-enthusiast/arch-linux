#!/bin/bash
# This script needs youtube-dl to be installed on your device
#It uses youtube-dl's built in functionality to easily let you choose what quality of audio and video you want.
#eg: you want to download 480p video instead of best quality available. Run this script, input URL of video file then
#   choose the audio and video format code from the list that pops up. Choose audio format code first and then video format code.
#   the script will download the video and save it such that there is no junk text in the name and there are spaces between words.
echo "Enter the desired URL: "
read url
youtube-dl -F $url
echo "Enter desired audio format code: "
read audio_format
echo "Enter desired video format code: "
read video_format
youtube-dl -f "$video_format + $audio_format" -o "%(title)s.%(ext)s" $url

#For system-wide(and user-wide) access: chmod u+x yt-interactive.sh && mv yt-interactive.sh yt-interactive && sudo mv yt-interactive /bin/
