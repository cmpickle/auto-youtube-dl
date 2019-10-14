#!/bin/bash
youtube-dl --playlist-reverse --download-archive /media/youtube/downloaded.txt -i -o "/media/youtube/music/%(title)s.%(ext)s" -f bestaudio[ext=m4a] --merge-output-format mp3 --add-metadata --write-thumbnail --batch-file=/media/youtube/channel_list.txt
./rename_music.sh
