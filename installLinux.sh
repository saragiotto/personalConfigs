#!/bin/bash

echo 'Copy .vimrc file'
cp .vimrc ~/

echo 'Copy .bashrc'
cp .bashrc ~/

if [ -d '~/.vim/pack/default/start/gruvbox' ]
then
    echo 'Cloning gruvbox for Vim'
    git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox 
fi

echo 'Install Fira Mono Font'
mkdir FMFonts
unzip Fira_Mono.zip -d FMFonts
mkdir /usr/share/fonts/fira-mono
cp FMFonts/*.ttf /usr/share/fonts
rm -rf FMFonts
