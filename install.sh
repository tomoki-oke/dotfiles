#!/bin/zsh
DOTFILES_HOME=`pwd`

if [ -z "$XDG_CONFIG_HOME"]; then
    CONFIG_DIR=$HOME/.config
else
    CONFIG_DIR=$XDG_CONFIG_HOME
fi

export GOPATH=$CONFIG_DIR/go
go get -u github.com/justjanne/powerline-go

if [ ! -e $CONFIG_DIR/nvim ]; then
    ln -s $DOTFILES_HOME/nvim $CONFIG_DIR/nvim
fi
ln -s $DOTFILES_HOME/zsh/basic.zsh $HOME/.zshrc
ln -s $DOTFILES_HOME/tmux/basic.tmux $HOME/.tmux.conf
source $HOME/.zshrc
