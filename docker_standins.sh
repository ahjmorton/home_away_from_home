#!/bin/bash

if ! command -v ghci > /dev/null 
then
    alias ghci='docker run --rm --interactive --volume "$(pwd)":/work -w /work --tty haskell ghci'
fi
