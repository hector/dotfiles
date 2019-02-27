#!/usr/bin/env bash

# Some aliases
# https://gist.github.com/cbrunnkvist/9e530918adfe61225b0f
alias docker-env-eval='eval "$(docker-machine env)"'
alias docker-machine-refresh='(docker-machine stop || docker-machine kill) ; docker-machine start; docker-env-eval'


# Script to open the bash in a running docker container
# https://stackoverflow.com/questions/38786615/docker-number-of-lines-in-terminal-changing-inside-docker/49281526#49281526
goinside(){
    docker exec -it $1 bash -c "stty cols $COLUMNS rows $LINES && bash";
}
_goinside(){
    COMPREPLY=( $(docker ps --format "{{.Names}}" -f name=$2) );
}
complete -F _goinside goinside;
export -f goinside;
alias docker-bash=goinside
complete -F _goinside docker-bash;