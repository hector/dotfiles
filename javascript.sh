# Set the default editor to launch for the React red box
if hash webstorm 2>&-; 
then export REACT_EDITOR=webstorm
fi

if which yarn > /dev/null; then 
  PATH="$PATH:`yarn global bin`"
fi
