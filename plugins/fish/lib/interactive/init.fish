# Fish syntax highlighting
set -gx TERM screen-256color-bce # sets fish as the default terminal
set -g fish_color_autosuggestion 'aaa' 'brblack'
set -g fish_color_cancel -r
set -g fish_color_command 'green' --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow' '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator brorange
set -g fish_color_param white
set -g fish_color_quote bryellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow' '--background=brblack'
set -g fish_color_selection 'white' '--bold' '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# set -gx SHELL fish

function fish_user_key_bindings
    fish_vi_key_bindings
end
