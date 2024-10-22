if [ -f "$HOME/.zconda" ]; then
    source "$HOME/.zconda"
fi

eval "$(starship init zsh)"