# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/bin" ]] && PATH=$PATH:$HOME/.rvm/bin 
# RVM completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion