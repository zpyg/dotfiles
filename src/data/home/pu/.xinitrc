#!/bin/sh
# merge in defaults and keymaps
xmodmap "$HOME/.Xmodmap"
# set environment variables
export QT_QPA_PLATFORMTHEME=qt5ct
# start some nice programs
for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    . "$f"
done; unset f
exec dwm
