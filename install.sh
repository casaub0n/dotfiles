#!/bin/bash

DOT_FILES=(.zshrc .tmux.conf)

# tmux install
if [ ! -d ~/.local/src/ ]; then
    mkdir -p ~/.local/src/
    cd ~/.local/src/
    git clone https://github.com/tmux/tmux.git
    cd tmux
    sh autogen.sh
    ./configure && make
fi

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
