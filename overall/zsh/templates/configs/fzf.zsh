#use settings provided by fzf rpm in fedora repos
source /usr/share/fzf/shell/key-bindings.zsh

# Alt-j to jump in subdir with fzf help
jump() { BUFFER="cd $(ls -d */ | fzf)"; zle accept-line; }
zle -N jump
bindkey "\ej" jump
#bindkey -s "\ej" 'cd $(ls -d */ | fzf)\n'

# Alt-o to find file and edit with $EDITOR
edit() { BUFFER="fzf --bind \"enter:execute($EDITOR {})+abort\""; zle accept-line; }
zle -N edit
bindkey "\eo" edit
