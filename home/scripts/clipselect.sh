#!/usr/bin/env bash

selection=$(cliphist list | rofi -dmenu -p "Select content to re-copy to clipboard")

# Check if the selection is empty or not
if [[ -z $selection ]]; then
    exit 1
fi

echo "$selection" | awk '{$1=""; print $0}' | sed 's/^ //' | wl-copy
