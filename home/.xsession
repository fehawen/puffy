#!/bin/sh

#
# ~/.xsession
#

export ENV=$HOME/.kshrc

xset b off
xset b 0 0 0
xset m 6/0
xset r rate 250 50
# touchpad - Accel Constant Deceleration
xinput set-float-prop /dev/wsmouse0 300 0.4
# # touchpad - Accel Velocity Scaling
xinput set-float-prop /dev/wsmouse0 302 1.5
xrdb -merge $HOME/.Xresources
setxkbmap -layout "se(nodeadkeys)"
xrandr --dpi 192
xsetroot -solid "#172124"

cwm
