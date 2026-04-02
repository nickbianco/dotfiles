dotfiles
========
My personal dotfiles.

# Installation
--------------
### Clone the repository

    git clone https://github.com/nickbianco/dotfiles.git ~/.dotfiles

### Install [GNU Stow](https://www.gnu.org/software/stow/)

    Mac:    brew install stow
    Ubuntu: apt-get install stow

### Install [powerlevel10k](https://github.com/romkatv/powerlevel10k)

    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

- Must also install the [Meslo Nerd Font patched for powerlevel10k]( https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k)

### Install the dotfiles

    cd ~/.dotfiles
    stow tmux
    stow zsh

## Installing VS Code settings

VS Code stores user settings in different locations on Mac and Linux. Note that `keybindings.json` and `settings.json` do not install extensions.

### Mac

    stow --target="$HOME/Library/Application Support/Code/User" vscode

### Linux

    stow --target="$HOME/.config/Code/User" vscode/linux


## Claude Code settings

The `claude/CLAUDE.md` file contains global instructions for Claude Code. Since Claude Code does not support `stow` for its config directory, symlink it manually:

    ln -s ~/.dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md

> **Note:** `~/.claude/` must already exist (it is created automatically when Claude Code is first run).

## Terminal settings

### iTerm2 (Mac)
