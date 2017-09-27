nnoremap <C-e> :NERDTreeToggle<CR>

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeWinSize = 50
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeChDirMode = 2 " change vim working directory according to whatever the tree node is in NERDtree
let NERDTreeShowBookmarks = 1
let NERDTreeIgnore = ['node_modules', 'dist']
let mapleader = ","

map <leader>nt :NERDTreeTabsToggle<CR>
map <leader>ne :NERDTree<CR>
map <leader>g :NERDTreeFind<CR>

let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "M",
  \ "Staged"    : "M",
  \ "Untracked" : "N",
  \ "Renamed"   : "R",
  \ "Unmerged"  : "M",
  \ "Deleted"   : "D",
  \ "Dirty"     : "M",
  \ "Clean"     : "A",
  \ "Unknown"   : "?"
  \ }

let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_console_startup = 2
let g:nerdtree_tabs_smart_startup_focus = 1

function! Setcd()
    cd %:p:h
  endfunction
  command! Setcd call Setcd()

