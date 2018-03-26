#!/bin/bash

docker_cmd() {
    echo 'docker run --rm --interactive --user "$(id -u):$(id -g)" --volume "$(pwd)":$(pwd) -w "$(pwd)" --tty' $@
}

add_standin() {
    local command_name=$1
    shift
    local args=$@
    if ! command -v $command_name > /dev/null
    then
        echo "alias $command_name='$(docker_cmd $args)'"
    fi
}


alias docked='$(docker_cmd)'
eval $(add_standin ghci haskell ghci)
eval $(add_standin erl erlang erl)
eval $(add_standin irb ruby)
eval $(add_standin dot fgrehm/graphviz dot)
eval $(add_standin curl byrnedo/apline-curl)
eval $(add_standin groovy groovy)
eval $(add_standin terraform hashicorp/terraform:light)
eval $(add_standin gradle gradle:jdk8 gradle)
eval $(add_standin sbt hseeberger/scala-sbt)
eval $(add_standin aria2c vumagick/aria2 aria2c)
