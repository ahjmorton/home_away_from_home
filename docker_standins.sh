#!/bin/bash

if ! command -v ghci > /dev/null 
then
    alias ghci='docker run --rm --interactive --volume "$(pwd)":/work -w /work --tty haskell ghci'
fi

if ! command -v erl > /dev/null 
then
    alias erl='docker run --rm --interactive --volume "$(pwd)":/work -w /work --tty erlang erl'
fi

if ! command -v irb > /dev/null 
then
    alias irb='docker run --rm --interactive --volume "$(pwd)":/work -w /work --tty ruby'
fi


if ! command -v dot > /dev/null 
then
    alias dot='docker run --rm --interactive --volume "$(pwd)":/work -w /work fgrehm/graphviz dot'
fi

if ! command -v curl > /dev/null 
then
    alias curl='docker run --volume "$(pwd)":/work -w /work byrnedo/apline-curl'
fi
