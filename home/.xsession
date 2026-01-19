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

xinput set-float-prop /dev/wsmouse0 300 0.4
xinput set-float-prop /dev/wsmouse0 302 1.5

SW=$(xrandr 2>&1 | grep "Screen 0: minimum" | sed -e 's/.*, current //' -e 's/ x.*//')
if [ "${SW}" -eq 3200 ]; then
        export QHD=1
        export GDK_SCALE=2 # maybe
        export GDK_DPI_SCALE=0.75 # maybe
fi

if [ "$HIDPI" = "1" ]; then
    xrdb -DQHD=1 -DHOME="$HOME" < ~/.Xresources
else
    xrdb -DHOME="$HOME" < ~/.Xresources
fi

if [ -x ~/bin/paper ]; then
    ~/bin/paper
else
    xsetroot -solid "#babbbd"
fi

conky -qd -c ~/.conkyrc &

/usr/X11R6/bin/cwm
