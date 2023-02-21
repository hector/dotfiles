#!/usr/bin/env bash
 
# BREW_DIR=$(brew --prefix) 
BREW_DIR=/opt/homebrew # having it hardcoded is faster
export PATH=$BREW_DIR/bin:$BREW_DIR/sbin:$PATH
  
alias brew-cleanall='brew cleanup && brew cleanup --prune-prefix'
  
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=0
  
### Homebrew-cask

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

alias cask='brew cask'

