set number
"set cursorline
"set cursorcolumn
set visualbell
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
