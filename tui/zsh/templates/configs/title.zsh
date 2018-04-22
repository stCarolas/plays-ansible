precmd () { print -Pn "\e]0;$TITLE\a" }
t() { export TITLE="$*" }
