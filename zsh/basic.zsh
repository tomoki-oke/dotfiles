# Created by newuser for 5.1.1

if [ -z "$XDG_CONFIG_HOME"]; then
    CONFIG_DIR=$HOME/.config
else
    CONFIG_DIR=$XDG_CONFIG_HOME
fi


path=(
    $HOME/.local/bin(N-/)
    $path
)

# completion
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'

# vi mode
bindkey -v

# For Powerline zsh
export GOPATH=$CONFIG_DIR/go
function powerline_precmd() {
    PS1="$($GOPATH/bin/powerline-go -error $? -shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

alias vim=nvim

alias nvimrc='vim $HOME/.config/nvim/init.vim'

# For direnv
export EDITOR=nvim
eval "$(direnv hook zsh)"
