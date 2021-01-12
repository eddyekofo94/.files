set NVIM_PERSONAL_DIR "$DOT_PLUGINS_DIR/neovim/nvim"
set NVIM_PERSONAL_INIT "$NVIM_PERSONAL_DIR/init.lua"
set MYVIMRC "$XDG_CONFIG_HOME/nvim/init.vim"

if test -e $NVIM_PERSONAL_INIT
    alias nvim "nvim -u $NVIM_PERSONAL_INIT"
    alias vim "nvim -u $MYVIMRC"
end
