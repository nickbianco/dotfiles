dotfiles
========
My personal dotfiles.

# Installation
--------------
Clone the repository

    git clone https://github.com/nickbianco/dotfiles.git ~/.dotfiles
  
Install [GNU Stow](https://www.gnu.org/software/stow/)

    Mac:    brew install stow
    Ubuntu: apt-get install stow

Install the dotfiles

    cd ~/.dotfiles
    stow tmux
    stow --target="$HOME/.config" fish

## Installing VS Code settings

VS Code stores user settings in different locations on Mac and Linux. Note that `keybindings.json` and `settings.json` do not install extensions.

### Mac

    stow --target="$HOME/Library/Application Support/Code/User" vscode

### Linux

    stow --target="$HOME/.config/Code/User" vscode/linux
