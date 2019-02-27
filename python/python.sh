#!/usr/bin/env bash

alias pylab='ipython --pylab=osx'
# Alias for listing eggs and if new versions exist
alias pip_ls="pip search . | egrep -B1 'INSTALLED|LATEST'"

# Pyenv import
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pipenv completion
if hash pipenv 2>/dev/null; then
  # eval "$(pipenv --completion)"
  # Since the previous line is very slow, copy paste the code:
  _pipenv_completion() {
    local IFS=$'\t'
	COMPREPLY=( $( env COMP_WORDS="${COMP_WORDS[*]}" \
	               COMP_CWORD=$COMP_CWORD \
	               _PIPENV_COMPLETE=complete-bash $1 ) )
	return 0
  }
  complete -F _pipenv_completion -o default pipenv
fi
