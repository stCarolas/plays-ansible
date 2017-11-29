source ~/.zplug/init.zsh

zplug 'dracula/zsh', as:theme
zplug 'plugins/git', from:oh-my-zsh
zplug 'sparsick/ansible-zsh'

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
