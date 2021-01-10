# install Oh My Fish

curl -L https://get.oh-my.fish > install &&
fish install --path=~/.local/share/omf --config=~/.config/omf &&
omf install https://github.com/jhillyerd/plugin-git bang-bang

# key bindings
# bang-bang
bind ! __history_previous_command
bind '$' __history_previous_command_arguments