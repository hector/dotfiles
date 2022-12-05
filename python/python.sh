#!/usr/bin/env bash

alias pylab='ipython --pylab=osx'
# Alias for listing eggs and if new versions exist
alias pip_ls="pip search . | egrep -B1 'INSTALLED|LATEST'"

# Pyenv import
if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Function to link homebrew python to pyenv
# https://stackoverflow.com/a/72750989/1513130
pyenv-brew-relink() {
    rm -f "$HOME/.pyenv/versions/*-brew"
    for i in $(brew --cellar)/python* ; do
      for p in $i/*; do
        echo $p
        ln -s -f $p $HOME/.pyenv/versions/${p##/*/}-brew
      done  
    done
    pyenv rehash
}

# avoid doing a `pip install -r requirements.txt` on system python by accident
# https://docs.python-guide.org/dev/pip-virtualenv/
export PIP_REQUIRE_VIRTUALENV=true

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

# https://pipenv.readthedocs.io/en/latest/advanced/#custom-virtual-environment-location
#export PIPENV_VENV_IN_PROJECT=true
