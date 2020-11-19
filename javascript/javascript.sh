#!/usr/bin/env bash

# Set the default editor to launch for the React red box
if hash webstorm 2>/dev/null; then\
  export REACT_EDITOR=webstorm
fi

# https://yarnpkg.com/lang/en/docs/cli/global/
# Since $(yarn global bin) = /usr/local/bin and this is already present in the PATH
# I think we can avoid this piece of code, which is a bit slow
# if hash yarn 2>/dev/null; then 
#   export PATH="$(yarn global bin):$PATH"
# fi
