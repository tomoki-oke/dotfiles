# prefix key set to C-a
set -g prefix C-a
unbind C-b

# | でペインを縦に分割する
bind | split-window -h

# - でペインを横に分割する
bind s split-window -h
bind v split-window -v

# Vimのキーバインドでペインを移動する
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

set-option -s escape-time 0

# for powerline
source "$HOME/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf"
