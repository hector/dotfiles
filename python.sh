#!/bin/bash

alias pylab='ipython --pylab=osx'
# Alias for listing eggs and if new versions exist
alias pip_ls="pip search . | egrep -B1 'INSTALLED|LATEST'"

# Set virtualenvs folder for virtualenvwrapper
if [ -f "/usr/local/bin/virtualenvwrapper.sh" ]; then
	export WORKON_HOME=$HOME/.venvs
	export PROJECT_HOME=$PROJECTS
	source /usr/local/bin/virtualenvwrapper.sh
fi

# Pythonbrew import
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# Pyenv import
if [ -d "$HOME/.pyenv" ]; then
	export PATH="$HOME/.pyenv/bin:$PATH"
	if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
fi

# Add folders to import modules
# if [ -d "/usr/local/lib/python2.6/site-packages" ]; then
# 	PYTHONPATH=/usr/local/lib/python2.6/site-packages:$PYTHONPATH
# fi

# added by Anaconda 1.5.1 installer
[[ -d $HOME/.anaconda/bin ]] && export PATH="$HOME/.anaconda/bin:$PATH"
