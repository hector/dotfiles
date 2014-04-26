#!/bin/bash

# BASH HISTORY
export HISTCONTROL=ignoredups # ignore duplicate bash history commands
export HISTFILESIZE=3000

# MYSQL
[[ -s "/usr/local/mysql/bin" ]] && export PATH=/usr/local/mysql/bin:$PATH

# PATH
[[ -s "$HOME/.bin" ]] && export PATH=$HOME/.bin:$PATH

# SOURCES
# Load user script extensions
[[ -s "$HOME/scripts" ]] && for script in $(find "$HOME/.scripts" -type f -name "*.sh"); do source $script; done

# LOCALE
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
