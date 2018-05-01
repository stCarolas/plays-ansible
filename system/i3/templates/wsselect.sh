#! /bin/sh
#
# wsselect.sh
# Copyright (C) 2018 stcarolas <stcarolas@homeGround>
#
# Distributed under terms of the MIT license.
#

selection=$(i3-msg -t get_workspaces | jq -r ".[].name" | rofi -dmenu -matching fuzzy)
if [ ! -z "$selection" ];
then
    i3-msg workspace $selection
fi
