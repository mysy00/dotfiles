#!/bin/fish

# Credits: https://github.com/LukeSmithxyz/voidrice/blob/master/.local/bin/setbg
# This script does the following:
#	Run by itself, set the wallpaper (at X start).
#	If given a file, set that as the new wallpaper.
#	If given a directory, choose random file in it.
#	If wal is installed, also generates a colorscheme.

# Location of link to wallpaper link.
set bgloc "$HOME/.local/share/bg"

echo $argv[1]

if test -f $argv[1]
  ln -sf (readlink -f "$argv[1]") "$bgloc" && notify-send -i "$bgloc" "Changing wallpaper"
else if test -d $argv[1]
  ln -sf (find (readlink -f $argv[1]) -iregex '.*.\(jpg\|jpeg\|png\|gif\)' -type f | shuf -n 1) $bgloc && notify-send -i "$bgloc" "Random Wallpaper chosen"
end

# If pywal is installed, use it.
wal -i (readlink -f $bgloc) -o "$HOME/.config/wal/postrun" >/dev/null 2>&1

# Reload bspwm config to refresh colors
~/.config/bspwm/bspwmrc

#pidof dwm >/dev/null && xdotool key super+F12
feh --bg-fill "$bgloc"
