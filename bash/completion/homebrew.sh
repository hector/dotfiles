#!/bin/bash

FORCE_COMPLETION_SCRIPTS=false

# Load Homebrew completion scripts if it is installed
if hash brew 2>&-; then 	
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
	# brew install bash-completion
    . $(brew --prefix)/etc/bash_completion
  elif [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
	# brew install https://raw.github.com/Homebrew/homebrew-versions/master/bash-completion2.rb
	. $(brew --prefix)/share/bash-completion/bash_completion
  else
	FORCE_COMPLETION_SCRIPTS=true
  fi
else
  FORCE_COMPLETION_SCRIPTS=true
fi

# Keep compatibilty for OSX without homebrew (with completion packages installed) and other UNIX systems
if $FORCE_COMPLETION_SCRIPTS; then
  for script in $(find $DOTFILES/bash/completion -type f -name "*.completion"); do source $script; done
fi