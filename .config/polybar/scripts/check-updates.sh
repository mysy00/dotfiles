#!/bin/zsh

filename="/tmp/check-updates.txt"

if ! updates_arch=$(checkupdates > ${filename} | wc -l); then
    updates_arch=0
fi

echo "$updates_arch"


notify() {
    [[ -s ${filename} ]] && notify-send "Updates Available" "$(cat ${filename})"
    [[ -s ${filename} ]] || notify-send "Everything is up to date!"
} 

[[ $1 == "--notify" ]] && notify