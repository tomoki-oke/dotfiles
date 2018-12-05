#!/bin/zsh
DOTFILES_HOME=`pwd`

if [ -z "$XDG_CONFIG_HOME"]; then
    CONFIG_DIR=$HOME/.config
else
    CONFIG_DIR=$XDG_CONFIG_HOME
fi

# install powerline package
export GOPATH=$CONFIG_DIR/go
go get -u github.com/justjanne/powerline-go

# install latest python using pyenv
pyenv install 2.7.15
pyenv install 3.7.1

# layout dotfiles
if [ ! -e $CONFIG_DIR/nvim ]; then
    ln -s $DOTFILES_HOME/nvim $CONFIG_DIR/nvim
fi
ln -s $DOTFILES_HOME/zsh/basic.zsh $HOME/.zshrc
ln -s $DOTFILES_HOME/tmux/basic.tmux $HOME/.tmux.conf
ln -s $DOTFILES_HOME/git/gitconfig $HOME/.gitconfig

# load zshrc
source $HOME/.zshrc
