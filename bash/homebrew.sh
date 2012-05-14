#!/bin/bash

export HOMEBREW_PATH=`brew --prefix`

if hash brew 2>&-; then 
	PATH=$HOMEBREW_PATH/bin:$HOMEBREW_PATH/sbin:$PATH
fi
