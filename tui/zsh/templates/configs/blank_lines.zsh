function echo_blank() {
  setopt monitor
  echo
}
preexec_functions+=echo_blank
precmd_functions+=echo_blank
