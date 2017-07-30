pathmerge() {
    if [[ ! "$PATH" == *$1*  ]]; then
            export PATH=$PATH:$1
    fi
}

debug "PATHMERGE FUNC LOADED"
pathmerge /home/stcarolas/.local/bin
pathmerge /home/stcarolas/Coding/scripts
