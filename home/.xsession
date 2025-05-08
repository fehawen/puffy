#!/bin/sh

#
# ~/.xsession
#

export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc

xset b off
xset r rate 250 50
xrdb -merge $HOME/.Xresources
xrandr --dpi 192
xsetroot -solid "#172124"

/usr/X11R6/bin/cwm
