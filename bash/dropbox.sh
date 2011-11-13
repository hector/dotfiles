#!/bin/bash

# You can have a private .dotfiles dir on your Dropbox
# .sh files will be sourced

export DROPBOX=$HOME/Dropbox

[[ -s "$DROPBOX/.dotfiles/**/*.sh" ]] &&  for f in $DROPBOX/.dotfiles/**/*.sh; do source $f; done