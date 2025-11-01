#!/bin/sh

export LANG=en_US.UTF-8
export ENV=~/.kshrc

xset b off
xset r rate 250 50

# touchpad - Accel Constant Deceleration
xinput set-float-prop /dev/wsmouse0 300 0.4
# touchpad - Accel Velocity Scaling
xinput set-float-prop /dev/wsmouse0 302 1.5

xrdb -DHOME="$HOME" < ~/.Xresources
xsetroot -solid "#08090c"

conky -qd -c ~/.conkyrc &

/usr/X11R6/bin/cwm
