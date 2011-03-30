#!/bin/bash

# ls aliases
alias l='ls -1'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias lt="ls -lhtrF"
alias l.="ls -lhtrdF .*"
alias dir="lt"
alias dot="l."
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# other aliases
alias ssh="ssh -X"
alias md="mkdir -p"
alias rd="rmdir"
alias df="df -h"
alias mv="mv -i"
alias slink="ln -s"
alias sed='sed -E'
alias diff="colordiff"

# dotfiles aliases
alias dotmate='mate $BASH'
alias dotcd='cd $BASH'
alias reload!='. ~/.bashrc'

# custom generated aliases
alias unzipall="ls *.zip | xargs -n1 unzip -o"