#
# ~/.kshrc
#

. /etc/ksh.kshrc


VISUAL="vim"
EDITOR="${VISUAL}"
TERMINAL="xterm"
BROWSER="ungoogled-chromium"
# TERM=xterm-16color
TERM=xterm-256color

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin
PATH=$PATH:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin

export VISUAL EDITOR TERMINAL BROWSER PATH

HISTCONTROL="ignoredups"
HISTFILE="$HOME/.ksh_history"
HISTSIZE=2000

alias la="ls -lA"
alias al="ls -A1 | less -R"
alias ll="ls -lAh | less -R"

set -o vi

PS1="\033[34m\W \033[35;1m\$ \033[0m"
