. /etc/ksh.kshrc

VISUAL=vim
EDITOR=$VISUAL
TERMINAL=xterm
BROWSER=ungoogled-chromium
# TERM=xterm-16color
TERM=xterm-256color

PATH=~/bin:/bin:/sbin:/usr/bin:/usr/sbin
PATH=$PATH:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
PATH=$PATH:/usr/local/jdk-1.8.0/bin/

export VISUAL EDITOR TERMINAL BROWSER PATH

HISTCONTROL=ignoredups
HISTFILE=~/.ksh_history
HISTSIZE=2000

alias la="ls -lAh"
alias al="ls -A1 | less -R"
alias ll="ls -lAh | less -R"

set -o vi

# shellcheck disable=2025
PS1="\033[34m\W \033[35;1m\$ \033[0m"
