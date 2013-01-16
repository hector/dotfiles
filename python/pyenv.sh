#!/bin/bash

if [ -d "$HOME/.pyenv" ]; then
	export PATH="$HOME/.pyenv/bin:$PATH"
	if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
fi
	