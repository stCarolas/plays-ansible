Plug 'stCarolas/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins'  }
Plug 'stCarolas/deoplete.nvim'
Plug 'ervandew/supertab', { 'do': ':UpdateRemotePlugins' }
let g:LanguageClient_serverCommands = {
    \ 'java': ['java', '-jar', '/home/stcarolas/.config/nvim/sources/out/fat-jar.jar']
 		\ }
let g:deoplete#omni_patterns = '.*'
let g:deoplete#enable_at_startup = 0
