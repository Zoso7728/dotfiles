" Swap between current file and most recently edited file
nnoremap <leader><leader> <c-^>

" Javascript ES6 arrow function helper
imap <c-l> <space>=><space>

" JSON pretty print
map <C-b> :%!python -m json.tool<CR>

" Dynamically add .only when inside a test block
nmap <leader>ot mT:%s/test.only/test/ge<cr>'T?test(<cr>cetest.only<esc>'T

" Remove all .only from a file
nmap <leader>ox mT:%s/test.only/test/ge<cr>'T

" Jump to source tree view of current directory
map <leader>jst :silent !open -a "/Applications/SourceTree.app" `pwd`<cr>

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

" Tracks cursor position per file. When file is reopened, cursor will appear where it once was
autocmd BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal g`\"" |
   \ endif

" Opens blank vim files
nnoremap c<C-j> :bel sp new<cr>
nnoremap c<C-k> :abo sp new<cr>
nnoremap c<C-h> :lefta vsp new<cr>
nnoremap c<C-l> :rightb vsp new<cr>
