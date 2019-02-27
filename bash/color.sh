#!/usr/bin/env bash

#COLORS
export COLOR_NONE="\033[0m"
export COLOR_WHITE="\033[1;37m"
export COLOR_BLACK="\033[0;30m"
export COLOR_BLUE="\033[0;34m"
export COLOR_LIGHT_BLUE="\033[1;34m"
export COLOR_GREEN="\033[0;32m"
export COLOR_LIGHT_GREEN="\033[1;32m"
export COLOR_CYAN="\033[0;36m"
export COLOR_LIGHT_CYAN="\033[1;36m"
export COLOR_RED="\033[0;31m"
export COLOR_LIGHT_RED="\033[1;31m"
export COLOR_PURPLE="\033[0;35m"
export COLOR_LIGHT_PURPLE="\033[1;35m"
export COLOR_BROWN="\033[0;33m"
export COLOR_YELLOW="\033[1;33m"
export COLOR_GRAY="\033[0;30m"
export COLOR_LIGHT_GRAY="\033[0;37m"

export CLICOLOR=1 #enable colors
#export LSCOLORS="Exfxgxdxcxegedabagacadw"

# Add colour aliases from grc
[[ -s "/usr/local/etc/grc.bashrc" ]] && source /usr/local/etc/grc.bashrc