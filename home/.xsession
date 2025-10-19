#!/bin/sh

#
# ~/.xsession
#

export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc

prefix="/usr/X11R6"
exec_prefix="${prefix}"

${exec_prefix}/bin/xset b off
${exec_prefix}/bin/xset r rate 250 50
${exec_prefix}/bin/xrdb -merge $HOME/.Xresources
${exec_prefix}/bin/xsetroot -solid "#08090c"

${exec_prefix}/bin/cwm
