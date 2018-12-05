#!/bin/sh
DOTROOT=`pwd`

if [ "$(uname)" = 'Darwin' ]; then
    OS="Mac"
else
    OS="Linux"
fi

if type brew > /dev/null 2>&1; then
    echo 'brew is installed.'
else
    if [ $OS = "Mac" ]; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        # install linuxbrew
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
        test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
        test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
        test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >> ~/.zprofile
        echo "eval \$($(brew --prefix)/bin/brew shellenv)" >> ~/.profile
    fi
fi
brew update

cat $DOTROOT/brew/requirements.txt | while read package
do
    brew install $package
done
export SHELL=`which zsh`
