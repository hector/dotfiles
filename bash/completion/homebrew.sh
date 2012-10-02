#!/bin/bash

# Load Homebrew completion scripts if it is installed
if hash brew 2>&-; then 
  if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
    . $(brew --prefix)/share/bash-completion/bash_completion
  fi
  # We want it to verbously fail so installing is enforced:
  # brew install https://raw.github.com/Homebrew/homebrew-versions/master/bash-completion2.rb
else
	# Keep compatibilty for OSX without homebrew and other UNIX systems
	for script in $(find $DOTFILES/bash/completion -type f -name "*.completion"); do source $script; done
fi
