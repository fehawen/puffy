#!/bin/sh

export ENV=~/.kshrc
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export MOZ_USE_XINPUT2=1
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1

xset b off
xset r rate 250 50

SW=$(xrandr | awk '/^Screen 0:/ {
    sub(/,/, "", $8)
    print $8
}')

if [ "${SW}" -ge 3000 ]; then
    export QHD=1
    export GDK_SCALE=1.5
else
    unset QHD
    unset GDK_SCALE
fi

xrdb -merge -DQHD="${QHD:-0}" "$HOME/.Xresources"

xsetroot -solid "#babbbd"
conky -qd -c ~/.conkyrc &

/usr/X11R6/bin/cwm
