#!/usr/bin/env bash

# BASH HISTORY
export HISTCONTROL=ignoredups # ignore duplicate bash history commands
export HISTFILESIZE=3000

# PROMPT
# brew install bash-git-prompt
if [ -f "/opt/homebrew/opt/bash-git-prompt/share/gitprompt.sh" ]; then
   __GIT_PROMPT_DIR="/opt/homebrew/opt/bash-git-prompt/share"
   source "/opt/homebrew/opt/bash-git-prompt/share/gitprompt.sh"
fi

# LOCALE
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# DIRENV
if hash direnv 2>/dev/null; then eval "$(direnv hook bash)"; fi
