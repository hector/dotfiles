#!/bin/bash
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

if hash mate 2>&-; then export GIT_EDITOR="mate -w"
elif hash nano 2>&-; then export GIT_EDITOR=nano
elif hash vim 2>&-; then export GIT_EDITOR=vim	
else export GIT_EDITOR=vi
fi