let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
execute 'source ' s:config_home . '/nvim/dein_init.vim'
execute 'source ' s:config_home . '/nvim/basic.vim'
execute 'source ' s:config_home . '/nvim/keymap.vim'
