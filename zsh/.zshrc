if [ -f "$HOME/.zshrc.local" ]; then
    source "$HOME/.zshrc.local"
fi

eval "$(starship init zsh)"