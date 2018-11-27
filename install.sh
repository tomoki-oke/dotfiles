#!/bin/sh
DOTFILES_HOME=`pwd`
if [ -z "$XDG_CONFIG_HOME"]; then
    CONFIG_DIR=$HOME/.config
else
    CONFIG_DIR=$XDG_CONFIG_HOME
fi

ln -s $DOTFILES_HOME/nvim $CONFIG_DIR/nvim
ln -s $DOTFILES_HOME/zsh/basic.zsh $HOME/.zshrc
ln -s $DOTFILES_HOME/tmux/basic.tmux $HOME/.tmux.conf
