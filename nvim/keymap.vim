nmap Q <Nop>

" ウィンドウ分割
nmap ss :split<CR>
nmap sv :vsplit<CR>

" ウィンドウ移動
nmap sh <C-w>h<CR>
nmap sj <C-w>j<CR>
nmap sk <C-w>k<CR>
nmap sl <C-w>l<CR>
nmap sw <C-w>w<CR>

" タブ関係
nmap st :tabnew<CR>
nmap sn gt<CR>
nmap sp gT<CR>

" プラグイン関連

" denite - coming soon

" cow
nmap <Space>c <Plug>(caw:hatpos:toggle)
vmap <Space>c <Plug>(caw:hatpos:toggle)
nmap <Space>, <Plug>(caw:zeropos:toggle)
vmap <Space>, <Plug>(caw:zeropos:toggle)

" acceleratedjk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" nerdtree
nmap <silent><C-n> :NERDTreeToggle<CR>
