# Colorize `ls` output using dircolors settings
set -g LS_COLORS "*.xyz=90;50"

alias l="exa --group-directories-first --long --header --binary --group"
alias la="l -a"
