nmap <Leader>f :Denite file/rec<CR>
nmap <Leader>l :Denite buffer<CR>

" Change mappings.
call denite#custom#map(
      \ 'insert',
      \ '<C-j>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-k>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-space>',
      \ '<denite:toggle_select_down>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<space>',
      \ '<denite:toggle_select_all>',
      \ 'noremap'
      \)
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
let g:easygit_enable_command = 1
