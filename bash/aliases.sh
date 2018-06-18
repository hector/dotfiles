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
alias md="mkdir -p"
alias rd="rmdir"
alias df="df -h"
alias mv="mv -i"
alias slink="ln -s"
alias less="less -R"
alias grep="grep --color=auto"

# internet aliases
alias myip='curl ifconfig.me/ip'
alias myhost='curl ifconfig.me/host'
alias myinternet='curl ifconfig.me/all'

# dotfiles aliases
alias dotfiles='$EDITOR $DOTFILES &'
alias dotmate='mate $DOTFILES'
alias dotcd='cd $DOTFILES'
alias reload!='. ~/.bashrc'

# misc
alias unzipall="ls *.zip | xargs -n1 unzip -o"
alias encoding="vim -c 'execute \"silent !echo \" . &fileencoding | q'"