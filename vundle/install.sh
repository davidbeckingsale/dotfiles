#!/bin/sh

if [ ! -d ~/.vim/bundle/vundle ]; then
  /bin/mkdir -p ~/.vim/bundle/vundle
fi

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall
