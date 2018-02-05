#!/bin/bash

if ! command -v ghci > /dev/null 
then
    alias ghci='docker run --rm --interactive --volume "$(pwd)":/work -w /work --tty haskell ghci'
fi

if ! command -v dot > /dev/null 
then
    alias dot='docker run --rm --interactive --volume "$(pwd)":/work -w /work fgrehm/graphviz dot'
fi
