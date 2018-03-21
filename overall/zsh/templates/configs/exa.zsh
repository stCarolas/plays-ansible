autoload -Uz add-zsh-hook
chback_on_chdir () {
    exa -hl --git --group-directories-first
}
add-zsh-hook chpwd chback_on_chdir

#Alt-l to ll dir
bindkey -s "\el" "exa -hl --git --group-directories-first\n"
alias ll="exa -hl --git --group-directories-first"
