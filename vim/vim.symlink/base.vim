set ic scs
set ai si
set ts=8 sts=4 sw=4 noet sta
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

" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set wh=10
set wmh=10
set wh=999
set wiw=120

cnoremap <expr> %% expand('%:h').'/'

let g:netrw_altfile = 1

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
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
nnoremap vv ^<C-v>g_

vmap <leader>y "*y
nmap <leader>p "*p

autocmd BufWritePre * %s/\s\+$//e

" Javascript ES6 arrow function helper
imap <c-l> <space>=><space>

map <C-b> :%!python -m json.tool<CR>

map <leader>. :try<bar>lnext<bar>catch /^Vim\%((\a\+)\)\=:E\%(553\<bar>42\):/<bar>lfirst<bar>endtry<cr>

" Jump to source tree view of current directory
map <leader>jst :silent !open -a "/Applications/SourceTree.app" `pwd`<cr>

" Swap between current file and most recently edited file
nnoremap <leader><leader> <c-^>

" Tracks cursor position per file. When file is reopened, cursor will appear where it once was
autocmd BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal g`\"" |
   \ endif

" Unknown configs
autocmd StdinReadPre * let s:std_in=1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Expand visual selection of surrounding code blocks
function! s:repeat_block(key) abort
  if a:key ==# '.'
    return get(s:, 'v_repeat_count', '').get(s:, 'v_repeat_key', '')
  endif

  let s:v_repeat_count = v:count1
  let s:v_repeat_key = a:key
  return a:key
endfunction

for k in ['w', 'W', 's', 'p', '[', ']', '(', ')', 'b', '<', '>', 't', '{', '}', 'B', '"', "'", '`']
  execute printf('vnoremap <expr> a%s <sid>repeat_block("a%s")', k, k)
  execute printf('vnoremap <expr> i%s <sid>repeat_block("i%s")', k, k)
endfor

unlet! k

vnoremap <expr> . <sid>repeat_block('.')
