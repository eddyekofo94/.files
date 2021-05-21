local wezterm = require 'wezterm';

local colors = {
    none = "NONE",
    bg_dark = "#1f2335",
    bg = "#24283b",
    bg_highlight = "#292e42",
    terminal_black = "#414868",
    fg = "#c0caf5",
    fg_dark = "#a9b1d6",
    fg_gutter = "#3b4261",
    dark3 = "#545c7e",
    comment = "#565f89",
    dark5 = "#737aa2",
    blue0 = "#3d59a1",
    blue = "#7aa2f7",
    cyan = "#7dcfff",
    blue1 = "#2ac3de",
    blue2 = "#0db9d7",
    blue5 = "#89ddff",
    blue6 = "#B4F9F8",
    blue7 = "#394b70",
    magenta = "#bb9af7",
    purple = "#9d7cd8",
    orange = "#ff9e64",
    yellow = "#e0af68",
    green = "#9ece6a",
    green1 = "#73daca",
    green2 = "#41a6b5",
    teal = "#1abc9c",
    red = "#f7768e",
    red1 = "#db4b4b"
}

return {
    font = wezterm.font("UbuntuMono Nerd Font Mono", {weight = "Regular"}),
    color_scheme = "TokyoNight",
    font_size = 20.0,
    bold_brightens_ansi_colors = true,
    hide_tab_bar_if_only_one_tab = true,
    colors = {
        tab_bar = {
            background = colors.bg_dark,
            active_tab = {bg_color = colors.bg_highlight, fg_color = colors.fg},
            inactive_tab = {bg_color = colors.bg, fg_color = "#909090"},
            inactive_tab_hover = {
                bg_color = colors.terminal_black,
                fg_color = colors.fg_dark,
                italic = true
            }
        }
    },
    colors_scheme_dirs = {"$HOME/.config/wezterm/colors"},
}
