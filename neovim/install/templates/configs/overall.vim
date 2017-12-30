set showmatch
set hidden
set expandtab
set tabstop=2
set shiftwidth=2
set nojoinspaces
set textwidth=0
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'darcula'
  \ }
set showtabline=2
set cursorline
set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=white
hi CursorColumn   cterm=NONE ctermbg=darkgray ctermfg=white
:autocmd InsertEnter * set nocursorline
:autocmd InsertEnter * set nocursorcolumn
:autocmd InsertLeave * set cursorline
:autocmd InsertEnter * set cursorcolumn
