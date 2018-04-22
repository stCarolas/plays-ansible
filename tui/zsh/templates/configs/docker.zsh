drun() {
  export FZF_DEFAULT_OPTS='--height 90% --reverse --border'
  local image=$(docker images --format '{{.Repository}}:{{.Tag}}' | fzf-tmux --reverse --multi)
  echo "Image:" $image
  printf "Options:"
  read -e run_opts
  docker run $run_opts $image
}

drh() {
  docker run -v ${PWD}:/data -v /var/run/docker.sock:/var/run/docker.sock -it $1 bash
}

dbuild() {
  project_name=${PWD##*/}
  docker build . -t $project_name:$(date +%s)
}
