for f in ~/.config/bash/common.d/*; 
    do source $f; 
done

case $- in
  *i*) 
      debug "INTERACTIVE"
      for f in ~/.config/bash/interactive.d/*; 
        do source $f; 
      done
      if [ -z "$TMUX" ]
      then
        export TMUX_SESSION_NAME="$(date +%s)"
        tmux new-session -A -s $TMUX_SESSION_NAME
      fi
      ;;
  *) 
      debug "NON_INTERACTIVE"
      ;;
esac
