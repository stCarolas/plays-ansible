# BEGIN ANSIBLE MANAGED BLOCK
tf_old() {
    if ! [[ -z "$TMUX" ]]
    then
        tmux detach
    fi
    tmux attach-session -t $(tmux list-session -F "#{session_name}" | fzf)
}
alias ts='tmux list-session'
alias ta='tmux attach-session -t'
alias td='tmux detach'
alias tf='tmux attach-session -t $(tmux list-session -F "#{session_name}" | fzf)'
alias tn='tmux new-session'
alias tc='tmux new-session -s'
# END ANSIBLE MANAGED BLOCK
