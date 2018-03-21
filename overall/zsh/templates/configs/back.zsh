back() { BUFFER="cd .."; zle accept-line; }
zle -N back
bindkey "\eh" back
