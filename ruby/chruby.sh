if [ -d "/usr/local/opt/chruby" ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  # add homebrew rubies
  if [ -d "/usr/local/Cellar/ruby" ]; then
    RUBIES+=(/usr/local/Cellar/ruby/*)
  fi
  # enable auto-switching of Rubies specified by .ruby-version files
  source /usr/local/opt/chruby/share/chruby/auto.sh
fi