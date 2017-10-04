" Basic configurations
set ic
set scs
set nohlsearch
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showmatch
set vb t_vb=
set incsearch
set number
set wrap linebreak nolist
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set mouse=a
set splitbelow
set splitright
set sidescrolloff=5
set scrolloff=1
set autoread
set formatoptions-=co
set nojoinspaces
set backspace=indent,eol,start
set clipboard=unnamed
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set colorcolumn=110
set nocompatible

" Custom Bindings
map ' `
let mapleader = ","
map Y y$
map ; :
map H ^
map L $
map <C-B> <C-6>
map S i<CR><Esc>k$
nmap K kJ
map <Space> 10j
map <BS> 10k
map <C-n> :bnext<CR>
map <C-p> :bprev<CR>
inoremap jj <Esc>
noremap j gj
noremap k gk
vmap <leader>y "*y
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
nnoremap vv ^<C-v>g_

" Swap between current file and most recently edited file
nnoremap <leader><leader> <c-^>

" Tracks cursor position per file. When file is reopened, cursor will appear where it once was
autocmd BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal g`\"" |
   \ endif

" Unknown configs
autocmd StdinReadPre * let s:std_in=1

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json Prettier
let g:prettier#config#tab_width = 4
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#semi = 'false'
let g:prettier#config#print_width = 110

silent! so .vimlocal
let g:neoformat_javascript_prettier = {
\ 'args': ['--stdin', '--print-width 110', '--tab-width 4', '--single-quote', '--trailing-comma es5'],
\ 'stdin': 1,
\ 'no_append': 1,
\ }

" Set the prettier CLI executable path
"let g:prettier#exec_cmd_path = "~/path/to/cli/prettier"

let g:neoformat_enabled_javascript = ['prettier']

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

