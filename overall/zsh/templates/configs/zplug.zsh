source ~/.zplug/init.zsh

zplug 'mgee/slimline'
zplug 'plugins/git', from:oh-my-zsh
zplug 'sparsick/ansible-zsh'
zplug 'jreese/zsh-titles'

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
stty intr \^e
