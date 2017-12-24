#!/bin/bash

if ! command -v ghci > /dev/null 
then
    alias ghci="docker run --rm --interactive --volume '${PWD}':/root --tty haskell"
fi
