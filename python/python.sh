#!/bin/bash

alias pylab='ipython --pylab=osx'
# Alias for listing eggs and if new versions exist
alias pip_ls="pip search . | egrep -B1 'INSTALLED|LATEST'"

# Pyenv import
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pipenv completion
if hash pipenv 2>/dev/null; then
	eval "$(pipenv --completion)"
fi
