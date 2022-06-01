$HOME/.local/bin/setbg.sh &
exec slstatus &
while type dwm >/dev/null ; do dwm && continue || break ; done
xset -dpms
xset s noblank
xset s off
