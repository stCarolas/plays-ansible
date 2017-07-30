# BEGIN docker functions (ansible managed)
dps () {
    if [ -z "$1" ]
    then
        docker ps
    else 
        docker ps -a | grep $1
    fi
}
dim () {
    if [ -z "$1" ]
    then
        docker images
    else 
        docker images | grep $1
    fi
}
dph () {
    docker push grep $1
}
dsh () {
    docker exec -it $1 bash
}
drm () {
    docker rm -f $1
}
dlg () {
    docker logs --tail 500 -f $1
}
# END docker functions (ansible managed)
