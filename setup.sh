#!/bin/sh
DOTROOT=`pwd`

# check OS
if [ "$(uname)" = 'Darwin' ]; then
    OS="Mac"
else
    OS="Linux"
fi

if type brew > /dev/null 2>&1; then
    echo 'brew is installed.'
else
    # install brew command
    if [ $OS = "Mac" ]; then
        # install homebrew
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

# install requirements
cat $DOTROOT/brew/requirements.txt | while read package
do
    brew install $package
done

# chenge shell
export SHELL=`which zsh`
