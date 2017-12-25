function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- N --}/(main|viins)/-- I--}"$RPS1
    RPS2=$RPS1$RPS2
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
