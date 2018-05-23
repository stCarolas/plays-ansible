nmap <space>df :Denite file/rec<CR>
nmap <space>db :Denite buffer<CR>

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
let g:easygit_enable_command = 1
