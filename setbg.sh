#!/bin/sh

echo "choosing wallpaper"
wall=$(find $HOME/pix/wall -type f | shuf -n 1)
echo "setting up wallpaper"
echo "generating color scheme"
wal -i $wall >/dev/null
sed -i 'N;$!P;D' $HOME/.cache/wal/colors-wal-dwm.h
echo "recompiling dwm"
(cd $HOME/.config/dwm && sudo make clean install>/dev/null)
echo "restarting dwm for new look"
xdotool key super+shift+q
