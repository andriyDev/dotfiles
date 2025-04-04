#!/bin/env fish

if status is-interactive
    if test -e ~/.bash_aliases
        source ~/.bash_aliases
    end

    fish_add_path -P $HOME/.cargo/bin
end
