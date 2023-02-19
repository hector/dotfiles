#!/usr/bin/env bash

if [ -d "/opt/homebrew/opt/chruby" ]; then
  source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
  # add homebrew rubies
  if [ -d "/opt/homebrew/Cellar/ruby" ]; then
    RUBIES+=(/opt/homebrew/Cellar/ruby/*)
  fi
  # enable auto-switching of Rubies specified by .ruby-version files
  source /opt/homebrew/opt/chruby/share/chruby/auto.sh
fi