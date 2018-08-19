#! /bin/sh
#
# conky.sh
# Copyright (C) 2018 stcarolas <stcarolas@carbon>
#
# Distributed under terms of the MIT license.
#

if [[ -f /tmp/conky ]]
then
    kill $(cat /tmp/conky)
    rm -rf /tmp/conky
else
    conky -c ~/.config/conky/stats -b &
    echo $! > /tmp/conky
fi
