source ~/.zplug/init.zsh

zplug 'mgee/slimline', as:theme
zplug 'dracula/zsh', as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
