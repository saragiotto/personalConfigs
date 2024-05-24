#!/bin/sh


echo 'Cloning Tmux Plugin Manager'
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo 'Copy tmux config file'
cp tmux.conf $HOME/.tmux.conf
