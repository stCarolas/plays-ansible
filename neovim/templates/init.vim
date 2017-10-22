call plug#begin()

Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'aperezdc/vim-template'
Plug 'skywind3000/asyncrun.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'airblade/vim-rooter'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/BufOnly.vim'
Plug 'aquach/vim-http-client'
Plug 'mileszs/ack.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

let mapleader="m"
set showmatch
set expandtab
set tabstop=2
set shiftwidth=2
set nojoinspaces
set textwidth=0
set relativenumber

nnoremap ; :
vnoremap ; :
