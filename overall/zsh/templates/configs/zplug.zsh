source ~/.zplug/init.zsh

zplug 'plugins/git', from:oh-my-zsh
zplug 'sparsick/ansible-zsh'
zplug 'jreese/zsh-titles'
zplug "agkozak/agkozak-zsh-theme"
zplug "uvaes/fzf-marks"

# Then, source plugins and add commands to $PATH
zplug load --verbose
stty intr \^e
