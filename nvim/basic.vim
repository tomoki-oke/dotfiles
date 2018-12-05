set number
set visualbell
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set foldmethod=marker
set nobackup

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" venv用のpython path
let g:python_host_prog = expand('%:p:h') . '/python/python2/.direnv/python-2.7.15/bin/python2.7'
let g:python3_host_prog = expand('%:p:h') . '/python/python3/.direnv/python-3.7.1/bin/python3.7'

nmap <Esc><Esc> :nohlsearch<CR><Esc>
