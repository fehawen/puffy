#!/bin/sh

#
# ~/.xsession
#

export ENV=$HOME/.kshrc

xset b off
xset r rate 250 50
xrdb -merge $HOME/.Xresources
xrandr --dpi 192
xsetroot -solid "#172124"

cwm
