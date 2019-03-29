#!/bin/bash
# 
# Post pull deploy script 
dotfiles="~/.dotfiles"

mkdir -p ~/.vim/backupfiles ~/.vim/swapfiles ~/.vim/undofiles
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Make sure that vimrc has been linked
cd "$dotfiles"
./dotfiles link

# Install plugins
vim +PluginInstall +qall
