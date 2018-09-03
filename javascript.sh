# Set the default editor to launch for the React red box
if hash webstorm 2>/dev/null; then\
  export REACT_EDITOR=webstorm
fi

if hash yarn 2>/dev/null; then 
  PATH="$PATH:`yarn global bin`"
fi
