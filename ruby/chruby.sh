if [ -d "/usr/local/opt/chruby" ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  # enable auto-switching of Rubies specified by .ruby-version files
  source /usr/local/opt/chruby/share/chruby/auto.sh
fi