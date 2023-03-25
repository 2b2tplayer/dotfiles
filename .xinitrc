$HOME/.local/bin/actualbg.sh &
checkupdates | wc -l > $HOME/.local/bin/updates.txt &
exec slstatus &
while type dwm >/dev/null ; do dwm && continue || break ; done
