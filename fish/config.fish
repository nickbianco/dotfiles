set -g fish_greeting
fish_add_path "/Applications/Sublime Text.app/Contents/SharedSupport/bin"
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
fish_add_path /opt/homebrew/opt/openjdk/bin

source ~/miniconda3/etc/fish/conf.d/conda.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/nbianco/miniconda3/bin/conda
    eval /Users/nbianco/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/Users/nbianco/miniconda3/etc/fish/conf.d/conda.fish"
        . "/Users/nbianco/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/Users/nbianco/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

