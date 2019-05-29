#!/usr/bin/env bash

# Set the default editor to launch from terminal
if hash code 2>/dev/null; then export EDITOR='code -w'
elif hash subl 2>/dev/null; then export EDITOR='subl -w'
elif hash mate 2>/dev/null; then export EDITOR='mate -w'
elif hash nano 2>/dev/null; then export EDITOR=nano
elif hash vim 2>/dev/null; then export EDITOR=vim	
else export EDITOR=vi
fi