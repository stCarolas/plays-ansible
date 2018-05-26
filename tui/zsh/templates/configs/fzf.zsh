#use settings provided by fzf rpm in fedora repos
#source /usr/share/fzf/shell/key-bindings.zsh

# Alt-j to jump in subdir with fzf help
fzf_open() {
    target=$(ls -d * | fzf)
    if [ -z "$target" ];
    then
        echo "selection is empty"
    else
        if [ -d "$target" ];
        then
            cd $target
        else
            nvim $target
        fi
    fi
}

fzf_open_zle() {
    BUFFER="fzf_open";
    zle accept-line;
}
zle -N fzf_open_zle
bindkey "\ej" fzf_open_zle

# Alt-o to find file and edit with $EDITOR
fzf_edit() { 
    BUFFER="fzf --bind \"enter:execute($EDITOR {})+abort\""; 
    zle accept-line; 
}
zle -N fzf_edit
bindkey "\eo" fzf_edit

# ctrl-r to find and execute command from history
fzf-history() { 
    BUFFER="$(history | tac | cut -c 8- | fzf)"; 
    zle accept-line; 
}
zle -N fzf-history
bindkey '^R' fzf-history
