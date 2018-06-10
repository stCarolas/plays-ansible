let mapleader="m"

call plug#begin()
for rcfile in split(globpath("~/.config/nvim/configs", "*.vim"), '\n') 
    execute('source '.rcfile)
endfor
call plug#end()

for rcfile in split(globpath("~/.config/nvim/keys", "*.vim"), '\n') 
    execute('source '.rcfile)
endfor

colorscheme 256-grayvim
hi EasyMotionTarget2First ctermbg=none ctermfg=red
hi EasyMotionTarget2Second ctermbg=none ctermfg=lightred
hi Folded ctermbg=none ctermfg=none

"hi Normal ctermbg=None
"hi CursorLine   cterm=None ctermbg=None ctermfg=white
"hi CursorLineNr ctermfg=07 ctermbg=180
"hi EndOfBuffer ctermfg=None
"highlight EndOfBuffer ctermfg=None ctermbg=None
"hi IndentGuidesEven  ctermbg=green
