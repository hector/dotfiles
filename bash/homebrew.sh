#!/bin/bash

if hash brew 2>&-; then 
	PATH=`brew --prefix`/bin:`brew --prefix`/sbin:$PATH
fi
