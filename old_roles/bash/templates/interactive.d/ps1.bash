#export PS1="\[\e[1;33m\]:\[\e[0;38m\]"
#print_pre_prompt () 
#{ 
    #PS1L=$PWD
    #if [[ $PS1L/ = "$HOME"/*  ]]; then PS1L=\~${PS1L#$HOME}; fi
    #PS1R=$USER@$HOSTNAME
    #printf "%s%$(($COLUMNS-${#PS1L}))s" "\033[0;31m$PS1L" "$PS1R"
#}
#export PROMPT_COMMAND=print_pre_prompt
