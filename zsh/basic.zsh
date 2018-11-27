# Created by newuser for 5.1.1

path=(
    $HOME/.local/bin(N-/)
    $path
)

# completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# For direnv
export EDITOR=zsh
eval "$(direnv hook zsh)"

# For Powerline zsh
powerline-daemon -q
. $HOME/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

alias vim=nvim

alias nvimrc='vim $HOME/.config/nvim/init.vim'
