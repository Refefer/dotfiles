#!/bin/sh
# Setup .vimrc
if [ "$0" != "./setup.sh" ]; then
    echo "Please run from project directory"
    exit 1
fi

# Vim
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.vim ~/.vim

# Terminator
if [ ! -d ~/.config/terminator ]; then
    mkdir -p ~/.config/terminator
fi
ln -s $PWD/terminator_config ~/.config/terminator/config

# bash
ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.bash_aliases ~/.bash_aliases

# CTags
ln -s $PWD/.ctags ~/.ctags
