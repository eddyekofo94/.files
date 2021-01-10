source $HOME/.config/fish/functions/fish_user_key_bindings.fish
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git}" | fzf'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
