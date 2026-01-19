. /etc/ksh.kshrc

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export VISUAL=/usr/local/bin/vim
export EDITOR=$VISUAL
export TERMINAL=/usr/local/bin/urxvtc
export BROWSER=/usr/local/bin/firefox-esr
export TERM=xterm-256color

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin
PATH=$PATH:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
PATH=$PATH:/usr/local/jdk-1.8.0/bin/
export PATH

HISTCONTROL=ignoredups
HISTFILE=$HOME/.ksh_history
HISTSIZE=2000

alias la="ls -lAh"
alias al="ls -A1 | less -R"
alias ll="ls -lAh | less -R"

set -o vi

# shellcheck disable=2025
PS1="\033[34m\W \033[35;1m\$ \033[0m"
