Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins'  }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab', { 'do': ':UpdateRemotePlugins' }
let g:LanguageClient_serverCommands = {
    \ 'java': ['java', '-jar', '/home/stcarolas/.config/nvim/sources/out/fat-jar.jar']
 		\ }
let g:deoplete#enable_at_startup = 1
