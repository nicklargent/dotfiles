#!/bin/bash

FILES=".vimrc .tmux.conf .gitconfig"
SRC=$PWD

cd ~

for f in $FILES; do
  if [ ! -L $f ]; then
      ln -s $SRC/$f
  fi
done
