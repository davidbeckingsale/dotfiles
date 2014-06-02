#!/bin/sh

if [ ! -d ~/.vim/bundle/vundle ]; then
  git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/vundle
  vim +PluginInstall +qall
fi
