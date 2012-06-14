#!/bin/bash

# You can have a private .dotfiles dir on your Dropbox
# .sh files will be sourced

export DROPBOX=$HOME/Dropbox

[[ -s "$DROPBOX/.dotfiles" ]] &&  for script in $(find "$DROPBOX/.dotfiles" -type f -name "*.sh"); do source $script; done 
