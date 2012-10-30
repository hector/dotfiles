if [ -d "$HOME/.rvm" ]; then
	PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
	[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion # RVM completion
fi
