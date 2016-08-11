#!/bin/sh

if [ ! -d ~/.vim/dein ]; then
  curl https://github.com/Shougo/dein.vim/blob/master/bin/installer.sh > installer.sh
  sh installer.sh $HOME/.vim/dein
fi
