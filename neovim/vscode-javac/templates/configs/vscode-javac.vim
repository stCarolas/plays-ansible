"Plug 'stCarolas/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins'  }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim'
Plug 'ervandew/supertab', { 'do': ':UpdateRemotePlugins' }
let g:LanguageClient_serverCommands = {
    \ 'java': ['~/Coding/jdt/start.sh']
 		\ }
let g:deoplete#omni_patterns = '.*'
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_autoStart = 1
nnoremap <silent> <space>d :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <space>u :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> <space>r :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <space>h :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <space>m :call LanguageClient_contextMenu()<CR>
nnoremap <silent> <space>a :call LanguageClient_textDocument_codeAction()<CR>
