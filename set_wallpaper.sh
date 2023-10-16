#!/bin/sh

wall=$(find $HOME/pictures/wall -type f -iname "*.jpg" -o -name "*.png" | shuf -n 1)

xwallpaper --zoom $wall

wal -c
wal -i $wall

xdotool key super+shift+q
