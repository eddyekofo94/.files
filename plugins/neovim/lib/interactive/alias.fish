if test -e $NVIM_PERSONAL_INIT
    echo "Setting up $NVIM_PERSONAL_INIT folder"
    alias nvim "nvim -u $NVIM_PERSONAL_INIT"
    alias vim "nvim -u $XDG_CONFIG_HOME/nvim/init.vim"
end
