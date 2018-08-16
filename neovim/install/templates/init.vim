let mapleader="m"

call plug#begin()
for rcfile in split(globpath("~/.config/nvim/configs", "*.vim"), '\n') 
    execute('source '.rcfile)
endfor
call plug#end()

for rcfile in split(globpath("~/.config/nvim/keys", "*.vim"), '\n') 
    execute('source '.rcfile)
endfor

colorscheme srcery
hi EasyMotionTarget2First ctermbg=none ctermfg=red
hi EasyMotionTarget2Second ctermbg=none ctermfg=lightred
hi Folded ctermbg=none ctermfg=none
hi Normal ctermbg=none
hi EndOfBuffer ctermfg=none
"hi CursorLine   cterm=None ctermbg=None ctermfg=white
"hi CursorLineNr ctermfg=07 ctermbg=180
"highlight EndOfBuffer ctermfg=None ctermbg=None
hi IndentGuidesEven  ctermbg=None
