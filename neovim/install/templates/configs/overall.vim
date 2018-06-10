set showmatch
set hidden
set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=0
set nojoinspaces
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'darcula'
  \ }
set showtabline=2
set laststatus=0
set number

set cursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
"autocmd InsertEnter * highlight CursorLineNr ctermbg=11 ctermfg=white
"autocmd InsertLeave * highlight CursorLineNr ctermfg=07 ctermbg=180
"autocmd BufEnter * highlight EndOfBuffer ctermfg=black ctermbg=black

autocmd BufEnter * let &titlestring = "[vim(" . expand("%:t") . ")]"
set title
set noswapfile
set nobackup
