set showmatch
set hidden
set expandtab
set tabstop=4
set shiftwidth=4
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

:autocmd InsertEnter * set nocursorline
:autocmd InsertEnter * hi CursorLineNr ctermbg=11 ctermfg=white
:autocmd InsertLeave * set cursorline
:autocmd InsertLeave * hi CursorLineNr ctermfg=07 ctermbg=180

autocmd BufEnter * let &titlestring = hostname() . "[vim(" . $PWD .expand("%:t") . ")]"
set title
set noswapfile
set nobackup
