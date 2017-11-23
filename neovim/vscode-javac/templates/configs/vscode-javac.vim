Plug 'stCarolas/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins'  }
Plug 'stCarolas/deoplete.nvim'
Plug 'ervandew/supertab', { 'do': ':UpdateRemotePlugins' }
let g:LanguageClient_serverCommands = {
    \ 'java': ['java', '-jar', '/home/stcarolas/.config/nvim/sources/out/fat-jar.jar']
 		\ }
let g:deoplete#omni_patterns = '.*'
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_autoStart = 1
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> <Leader>vd :call LanguageClient_textDocument_hover()<CR>
