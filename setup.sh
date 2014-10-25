#!/bin/bash

DOT_FILES=( .bashrc .vimrc .tmux.conf .gemrc )

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
