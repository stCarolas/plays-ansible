Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
let g:LanguageClient_serverCommands = {
    \ 'java': ['~/Coding/jdt/start.sh']
 		\ }
let g:LanguageClient_autoStart = 1
nnoremap <silent> <space>d :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <space>u :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> <space>r :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <space>h :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <space>m :call LanguageClient_contextMenu()<CR>
nnoremap <silent> <space>a :call LanguageClient_textDocument_codeAction()<CR>

Plug 'Shougo/deoplete.nvim'
let g:deoplete#omni_patterns = '.*'
let g:deoplete#enable_at_startup = 1

Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}
" optional - but recommended - see below
let g:fruzzy#usenative = 1

" When there's no input, fruzzy can sort entries based on how similar they are to the current buffer
" For ex: if you're on /path/to/somefile.h, then on opening denite, /path/to/somefile.cpp
" would appear on the top of the list.
" Useful if you're bouncing a lot between similar files.
" To turn off this behavior, set the variable below  to 0

let g:fruzzy#sortonempty = 1 " default value

" tell denite to use this matcher by default for all sources
call denite#custom#source('_', 'matchers', ['matcher/fruzzy'])

Plug 'ervandew/supertab', { 'do': ':UpdateRemotePlugins' }
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'
