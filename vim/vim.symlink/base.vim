set ic scs
set ai si
set ts=4 sts=4 sw=4 et sta
set nosm
set vb t_vb=
set is
set nu
set wrap lbr nolist
set nofen
set mouse=a
set sb spr
set siso=0
set ar
set fo-=co
set nojs
set bs=indent,eol,start
set cb=unnamedplus
set pt=<F2>
set icm=split

" Width & Height Settings
" Notes: We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set wh=10
set wmh=10
set wh=999
set wiw=120

let mapleader = ","

map ; :
map <Space> 10j
map <BS> 10k

" Allows for enabling/disabling of dynamic window height
map <leader>we :set winheight=999<cr>
map <leader>wd :set winheight=10<cr><c-w>=<cr>

let g:netrw_altfile = 1

map Y y$
map H ^
map L $
map <C-B> <C-6>
map S i<CR><Esc>k$
nmap K kJ
map <C-n> :bnext<CR>
map <C-p> :bprev<CR>
inoremap jj <Esc>
noremap j gj
noremap k gk
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
nnoremap vv ^<C-v>g_

vmap <leader>y "*y
nmap <leader>p "*p

autocmd BufWritePre * %s/\s\+$//e
