#!/bin/bash

echo 'Copy .vimrc file'
cp .vimrc ~/

echo 'Copy .bash_profile'
cp .bash_profile ~/

if [ -d '~/.vim/pack/default/start/gruvbox' ]
then 
    echo 'Cloning gruvbox for Vim'
    git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox 
else
    echo 'Gruvbox for Vim already installed'
fi

echo 'Install Fira Mono Font'
mkdir FMFonts
unzip Fira_Mono.zip -d FMFonts
cp FMFonts/*.ttf ~/Library/Fonts/
rm -rf FMFonts
