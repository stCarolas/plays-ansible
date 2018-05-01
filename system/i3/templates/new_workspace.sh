#! /bin/sh
#
# new_named_workspace.sh
# Copyright (C) 2018 stcarolas <stcarolas@homeGround>
#
# Distributed under terms of the MIT license.
#


name=$(zenity --entry --text="new workspace")
if [ ! -z "$name" ];
then
    i3-msg workspace $name
fi
