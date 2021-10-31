#!/usr/local/bin/fish

function theme_gruvbox --description 'Apply gruvbox-flat theme'
    set -l mode light
    if test (count $argv) -gt 0
        set mode $argv[1]
    end

    set -g contrast medium
    if test (count $argv) -gt 1
        set contrast $argv[2]
    end

    switch $contrast
        case soft
        case medium
        case hard
        case '*'
            set_color $fish_color_error
            echo 'Unknown contrast $contrast, choose soft, medium or hard'
            set_color $fish_color_normal
            return 1
    end

    switch $mode
        case light
            __theme_gruvbox_base
            __theme_gruvbox_light
        case dark
            __theme_gruvbox_base
            __theme_gruvbox_dark
        case '*'
            set_color $fish_color_error
            echo 'Unknown mode $mode, choose light or dark'
            set_color $fish_color_normal
            return 1
    end
    __theme_gruvbox_palette
    return 0
end

function __theme_gruvbox_base
    __printf_color 1 ea/69/62
    __printf_color 2 a9/b6/65
    __printf_color 3 d8/a6/57
    __printf_color 4 7d/ae/a3
    __printf_color 5 d3/86/9b
    __printf_color 6 89/b4/82
end

function __theme_gruvbox_light
    set -l bg fb/f1/c7
    switch $contrast
        case soft
            set bg f2/e5/bc
        case hard
            set bg f9/f5/d7
    end
    command printf "\033]11;rgb:$bg\007"

    set -l fg 3c/38/36
    command printf "\033]10;rgb:$fg\007"

    __printf_color 0 $bg
    __printf_color 7 7c/6f/64
    __printf_color 8 92/83/74
    __printf_color 9 9d/00/06
    __printf_color 10 79/74/0e
    __printf_color 11 b5/76/14
    __printf_color 12 07/66/78
    __printf_color 13 8f/3f/71
    __printf_color 14 42/7b/58
    __printf_color 15 $fg
end

function __theme_gruvbox_dark
    set -l bg 28/28/28
    switch $contrast
        case soft
            set bg 32/30/2f
        case hard
            set bg 1a/1a/1a
    end
    command printf "\033]11;rgb:$bg\007"

    set -l fg d4/be/98
    command printf "\033]10;rgb:$fg\007"

    __printf_color 0 $bg
    __printf_color 7 d4be98
    __printf_color 8 5a524c
    __printf_color 9 ea6962
    __printf_color 10 'a9/b6/65'
    __printf_color 11 'd8/a6/57'
    __printf_color 12 7daea3
    __printf_color 13 'd3/86/9b'
    __printf_color 14 89b482
    __printf_color 15 $fg
end

function __theme_gruvbox_palette
    __printf_color 236 32302f
    __printf_color 234 1a1a1a

    __printf_color 235 282828
    __printf_color 237 3c3836
    __printf_color 239 504945
    __printf_color 241 665c54
    __printf_color 243 7c6f64

    __printf_color 244 928374
    __printf_color 245 928374

    __printf_color 228 f2e5bc
    __printf_color 230 f9f5d7

    __printf_color 229 fbf1c7
    __printf_color 223 ebdbb2
    __printf_color 250 d5c4a1
    __printf_color 248 bdae93
    __printf_color 246 a89984

    __printf_color 167 ea6962
    __printf_color 142 a9b665
    __printf_color 214 d8a657
    __printf_color 109 7daea3
    __printf_color 175 d3869b
    __printf_color 108 89b482
    __printf_color 208 e78a4e

    __printf_color 88 c14a4a
    __printf_color 100 6c782e
    __printf_color 136 b47109
    __printf_color 24 45707a
    __printf_color 96 945e80
    __printf_color 66 4c7a5d
    __printf_color 130 c35e0a
end

function __printf_color
    command printf "\033]4;$argv[1];rgb:$argv[2]\007"
end
