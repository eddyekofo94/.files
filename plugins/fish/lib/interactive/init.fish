# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 364A82
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# set normal (set_color $foreground)
# set magenta (set_color $purple)
# set yellow (set_color $yellow)
# set green (set_color $green)
# set red (set_color $red)
# set gray (set_color -o black)

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Git syntax highlight
set __fish_git_prompt_color_branch $comment
set __fish_git_prompt_color_upstream_ahead $green
set __fish_git_prompt_color_upstream_behind $red
set __fish_git_prompt_color_dirtystate $red
set __fish_git_prompt_color_stagedstate $green
# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

set -x SHELL /usr/local/bin/fish

function fish_user_key_bindings
    fish_vi_key_bindings
end
