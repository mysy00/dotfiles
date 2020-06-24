#!/bin/zsh

filename="/tmp/check-updates-aur.txt"

if ! updates_aur=$(yay -Qu --aur > ${filename} | wc -l); then
    updates_aur=0
fi

echo "$updates_aur"

notify() {
    [[ -s ${filename} ]] && notify-send "Updates Available" "$(cat ${filename})"
    [[ -s ${filename} ]] || notify-send "Everything is up to date!"
} 

[[ $1 == "--notify" ]] && notify