if which rbenv > /dev/null; then
	export RBENV_ROOT=/usr/local/var/rbenv
	eval "$(rbenv init -)";
elif [ -d "$HOME/.rbenv" ]; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)";
fi
