alias jump='cd $(cat ~/.config/jumps | fzf | sed -r "s/.*:\ (.*)/\1/")'
bindkey -s "^g" "jump\n"
function mark() {
    echo "$1: $(pwd)" >> ~/.config/jumps
}
