let g:unite_source_rec_async_command = ['rg', '--follow', '--color=never', '-g', 'config/local.js', '-g', '*.*', '-g', '!.git', '--files']

nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer buffer<cr>

nnoremap <leader>t :<C-u>Unite -buffer-name=files -start-insert -force-redraw -default-action=tabopen file_rec/async<cr>
nnoremap <leader>s :<C-u>Unite -no-split -buffer-name=files -start-insert -force-redraw -default-action=split file_rec/async<cr>
nnoremap <leader>v :<C-u>Unite -no-split -buffer-name=files -start-insert -force-redraw -default-action=vsplit file_rec/async<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=files -start-insert -force-redraw file_rec/async<cr>

nnoremap <leader>T :<C-u>Unite -no-split -buffer-name=files -force-redraw -input=`expand('%:h').'/ '` -default-action=tabopen file_rec/git:--cached:--others:--exclude=node_modules:--exclude=dist:--exclude=plugged<cr>
nnoremap <leader>S :<C-u>Unite -no-split -buffer-name=files -force-redraw -input=`expand('%:h').'/ '` -default-action=split file_rec/git:--cached:--others:--exclude=node_modules:--exclude=dist:--exclude=plugged<cr>
nnoremap <leader>V :<C-u>Unite -no-split -buffer-name=files -force-redraw -input=`expand('%:h').'/ '` -default-action=vsplit file_rec/git:--cached:--others:--exclude=node_modules:--exclude=dist:--exclude=plugged<cr>
nnoremap <leader>E :<C-u>Unite -no-split -buffer-name=files -force-redraw -input=`expand('%:h').'/ '` file_rec/git:--cached:--others:--exclude=node_modules:--exclude=dist:--exclude=plugged<cr>

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  nmap <buffer> <Space> 10j
  nmap <buffer> <BS>    10k
endfunction
