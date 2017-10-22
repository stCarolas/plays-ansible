lf() {
    if [ -z "$LFLVL" ]
    then 
        ~/.local/bin/lf
    else
        exit
    fi
}
