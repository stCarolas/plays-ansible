for f in ~/.config/bash/common.d/*; 
    do source $f; 
done

case $- in
  *i*) 
      debug "INTERACTIVE"
      for f in ~/.config/bash/interactive.d/*; 
        do source $f; 
      done
      ;;
  *) 
      debug "NON_INTERACTIVE"
      ;;
esac
