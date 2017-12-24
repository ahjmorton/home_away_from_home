#!/bin/bash

if ! command -v ghci > /dev/null 
then
    alias ghci='docker run --rm --interactive --volume "$(pwd)":/root --tty haskell ghci'
fi
