if [ -d "$HOME/.nvm" ]; then
	[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load NVM into shell session
	[[ -r $HOME/.nvm/bash_completion ]] && . $HOME/.nvm/bash_completion # NVM completion	
fi