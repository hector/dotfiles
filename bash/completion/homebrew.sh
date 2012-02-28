#!/bin/bash

if hash brew 2>&-; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
else # brew install bash-completion
	# Keep compatibilty for OSX without homebrew and other UNIX systems
	for script in $(find $DOTFILES/bash/completion -type f -name "*.completion"); do source $script; done
fi
