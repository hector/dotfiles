#!/bin/bash

# Pythonbrew import
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# Pyenv import
if [ -d "$HOME/.pyenv" ]; then
	export PATH="$HOME/.pyenv/bin:$PATH"
	if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
fi

# Alias for listing eggs and if new versions exist
alias pip_ls="pip search . | egrep -B1 'INSTALLED|LATEST'"

# Add folders to import modules
# if [ -d "/usr/local/lib/python2.6/site-packages" ]; then
# 	PYTHONPATH=/usr/local/lib/python2.6/site-packages:$PYTHONPATH
# fi