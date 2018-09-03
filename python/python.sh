#!/bin/bash

alias pylab='ipython --pylab=osx'
# Alias for listing eggs and if new versions exist
alias pip_ls="pip search . | egrep -B1 'INSTALLED|LATEST'"

# Pyenv import
if [ -d "$HOME/.pyenv" ]; then
	export PATH="$HOME/.pyenv/bin:$PATH"
	if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
fi
