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
set laststatus=0
set cursorline
set number
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=white
hi CursorLineNr ctermfg=07 ctermbg=180

:autocmd InsertEnter * set nocursorline
:autocmd InsertEnter * hi CursorLineNr ctermbg=11 ctermfg=white
:autocmd InsertLeave * set cursorline
:autocmd InsertLeave * hi CursorLineNr ctermfg=07 ctermbg=180

autocmd BufEnter * let &titlestring = hostname() . "[vim(" . $PWD .expand("%:t") . ")]"
set title
set noswapfile
set nobackup
