set this when using the theme
theme_gruvbox dark

if status --is-interactive
        theme_gruvbox dark
end

set -x SHELL /usr/local/bin/fish

function fish_user_key_bindings
    fish_vi_key_bindings
end
