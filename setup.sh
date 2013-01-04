#!/bin/sh
# Setup .vimrc
if [ "$0" != "./setup.sh" ]; then
    echo "Please run from project directory"
    exit 1
fi

# Vim
ln -s $PWD/.vimrc ~/.vimrc

# Terminator
if [ ! -d ~/.config/terminator ]; then
    mkdir -p ~/.config/terminator
fi
ln -s $PWD/terminator_config ~/.config/terminator/config

ln -s $PWD/.bashrc ~/.bashrc
