#!/usr/bin/env bash

# Set the default editor to launch for the React red box
if hash code 2>/dev/null; then
  export REACT_EDITOR=code
fi

# https://yarnpkg.com/lang/en/docs/cli/global/
# Since $(yarn global bin) = /opt/homebrew/bin and this is already present in the PATH
# I think we can avoid this piece of code, which is a bit slow
# if hash yarn 2>/dev/null; then 
#   export PATH="$(yarn global bin):$PATH"
# fi

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
