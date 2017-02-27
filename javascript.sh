# Set the default editor to launch for the React red box
if hash /Applications/WebStorm.app/Contents/MacOS/webstorm 2>&-; 
then export REACT_EDITOR=/Applications/WebStorm.app/Contents/MacOS/webstorm
fi

if which yarn > /dev/null; then 
  PATH="$PATH:`yarn global bin`"
fi
