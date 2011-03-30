#!/bin/bash

# BASH HISTORY
export HISTCONTROL=ignoredups # ignore duplicate bash history commands
export HISTFILESIZE=3000

#PATH
[[ -s "$HOME/.bin" ]] && export PATH=$HOME/.bin/:$PATH

#SOURCES
# Load user script extensions
[[ -s "$HOME/.scripts" ]] &&  for f in $HOME/.scripts/*; do source $f; done
