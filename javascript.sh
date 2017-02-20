if which npm > /dev/null; then 
	PATH=$PATH:/usr/local/share/npm/bin
fi

if which yarn > /dev/null; then 
  PATH="$PATH:`yarn global bin`"
fi
