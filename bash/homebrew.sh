#!/bin/bash

if hash brew 2>&-; then 
	PATH=`brew --prefix`/bin:`brew --prefix`/sbin:$PATH
fi

# Temporal alias to upgrade casks (since 'brew cask upgrade' does not exist)
# Old version won't be automatically removed. Go to /opt/homebrew-cask/Caskroom to do so
alias brew-cask-upgrade='for c in `brew cask list`; do ! brew cask info $c | grep -qF "Not installed" || brew cask install $c; done'