#!/bin/bash

docker_cmd() {
    echo 'docker run --rm --interactive --user "$(id -u):$(id -g)" --volume "$(pwd)":$(pwd) -w "$(pwd)" --tty' $@
}

if ! command -v ghci > /dev/null 
then
    alias ghci=$(docker_cmd haskell ghci)
fi

if ! command -v erl > /dev/null 
then
    alias erl=$(docker_cmd erlang erl)
fi

if ! command -v irb > /dev/null 
then
    alias irb=$(docker_cmd ruby)
fi


if ! command -v dot > /dev/null 
then
    alias dot=$(docker_cmd fgrehm/graphviz dot)
fi

if ! command -v curl > /dev/null 
then
    alias curl=$(docker_cmd byrnedo/apline-curl)
fi
