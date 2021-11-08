# Set LS_COLORS environment variable so `ls` knows how to color directories/files
load_env (gdircolors $DOT_PLUGIN_DIR/etc/dircolors | psub)

alias ls="lsd"
alias l="exa --group-directories-first --icons --long --header --binary --group"
alias la="l -a"
