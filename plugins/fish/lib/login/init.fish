# scheme set tomorrow-night

set -l bg #282828
set -l fg #d4be98
set -l comment #45403d

set -l black 262627
set -l red ea6962
set -l green a9b665
set -l orange d8a657
set -l blue 7daea3
set -l purple d3869b
set -l cyan 89b482
set -l white d4be98

# Fish syntax highlighting
set -U fish_color_autosuggestion $comment 'brblack'
set -U fish_color_cancel -r
set -U fish_color_command $green --bold
set -U fish_color_comment $comment
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_end brmagenta
set -U fish_color_error brred
set -U fish_color_escape 'bryellow' '--bold'
set -U fish_color_history_current --bold
set -U fish_color_host $blue
set -U fish_color_match --background=brblue
set -U fish_color_normal $fg
set -U fish_color_operator $orange
set -U fish_color_param $fg
set -U fish_color_quote $green
set -U fish_color_redirection brblue
set -U fish_color_search_match 'bryellow' '--background=brblack'
set -U fish_color_selection 'white' '--bold' '--background=$white'
set -U fish_color_user blue
set -U fish_color_valid_path --underline

set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D yellow
set -U fish_pager_color_prefix white --bold --underline
set -U fish_pager_color_progress $white --background=cyan

set -x SHELL /usr/local/bin/fish

function fish_user_key_bindings
    fish_vi_key_bindings
end
