#!/bin/bash

FILES=".vimrc .tmux.conf .gitconfig"

cd ~

for f in $FILES; do
  if [ ! -L $f ]; then
      ln -s .dotfiles/$f
  fi
done
