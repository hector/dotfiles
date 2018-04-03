# Set the default editor to launch from terminal
if hash subl 2>&-; then export EDITOR='subl -w'
elif hash mate 2>&-; then export EDITOR='mate -w'
elif hash nano 2>&-; then export EDITOR=nano
elif hash vim 2>&-; then export EDITOR=vim	
else export EDITOR=vi
fi