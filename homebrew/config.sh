#!/bin/bash

if hash brew 2>&-; then 
	export PATH=`brew --prefix`/bin:`brew --prefix`/sbin:$PATH
  
  alias brew-cleanall='brew cleanup && brew prune && cask cleanup'
  
  export HOMEBREW_NO_ANALYTICS=1
  export HOMEBREW_NO_AUTO_UPDATE=1
  
  ### Homebrew-cask

  export HOMEBREW_CASK_OPTS="--appdir=/Applications"

  alias cask='brew cask'
  
fi
