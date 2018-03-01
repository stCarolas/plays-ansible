let mapleader="m"
call plug#begin()
for rcfile in split(globpath("~/.config/nvim/configs", "*.vim"), '\n') 
    execute('source '.rcfile)
endfor
call plug#end()
for rcfile in split(globpath("~/.config/nvim/keys", "*.vim"), '\n') 
    execute('source '.rcfile)
endfor
colors zenburn
hi EasyMotionTarget2First ctermbg=none ctermfg=red
hi EasyMotionTarget2Second ctermbg=none ctermfg=lightred
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
hi CursorLineNr ctermfg=07 ctermbg=180
hi Normal ctermbg=None
