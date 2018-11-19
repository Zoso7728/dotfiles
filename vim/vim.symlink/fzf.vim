command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --smart-case --column --line-number --no-heading --color=always ' . $RG_GLOBS . ' ' . shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

nnoremap <leader>b :Buffers<cr>

nnoremap <leader>e :call fzf#run({'sink': 'edit', 'source': 'git ls-files --exclude-standard --others --cached'})<cr>
nnoremap <leader>t :call fzf#run({'sink': 'tabedit', 'source': 'git ls-files --exclude-standard --others --cached'})<cr>
nnoremap <leader>s :call fzf#run({'sink': 'split', 'source': 'git ls-files --exclude-standard --others --cached'})<cr>
nnoremap <leader>v :call fzf#run({'sink': 'vsplit', 'source': 'git ls-files --exclude-standard --others --cached'})<cr>

nnoremap <leader>E :call fzf#run({'dir': expand('%:h'), 'sink': 'edit', 'source': 'git ls-files --exclude-standard --others --cached'})<cr>

nnoremap <leader>T :call fzf#run({'dir': expand('%:h'), 'sink': 'tabedit', 'source': 'git ls-files --exclude-standard --others --cached'})<cr>

nnoremap <leader>S :call fzf#run({'dir': expand('%:h'), 'sink': 'split', 'source': 'git ls-files --exclude-standard --others --cached'})<cr>

nnoremap <leader>V :call fzf#run({'dir': expand('%:h'), 'sink': 'vsplit', 'source': 'git ls-files --exclude-standard --others --cached'})<cr>

nnoremap <leader>a :Rg!<space>
" nmap <Leader>a :Rg! <C-r><C-w><CR>
