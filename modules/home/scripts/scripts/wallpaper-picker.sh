#!/usr/bin/env bash

wallpaper_path=$HOME/Pictures/wallpapers
wallpapers_folder=$HOME/Pictures/wallpapers/others
wallpaper_name="$(ls $wallpapers_folder | wofi -n --show dmenu --sort-order=alphabetical)"
if [[ -f $wallpapers_folder/$wallpaper_name ]]; then
    find ~/Pictures/wallpapers -maxdepth 1 -type f -delete
    wall-change $wallpaper_path/$wallpaper_name
else
    exit 1
fi