#!/bin/bash

# sshuttle helpers from https://github.com/teohm/dotfiles/blob/master/.bashrc.d/sshuttle_helpers

# set default SSH server:
#   user@hostname or a host in ~/.ssh/config
TNL_SERVER=default_ssh

# tunnel all traffic, including DNS.
alias tnl='sshuttle --dns -vr $TNL_SERVER 0/0'

# returns a list of IP addresses from given domain(s).
#
# Examples:
#  dns2ip google.com
#  dns2ip netflix.com movies.netflix.com
#
function dns2ip() {
  dig +short $* | sed "/[^0-9\.]/d" # use sed to remove non-IPv4 line e.g. alias
}

# tunnel specified domain(s) only.
#
# Examples:
#  tnlonly google.com
#  tnlonly netflix.com movies.netflix.com
#
function tnlonly() { 
  sshuttle -r $TNL_SERVER `dns2ip $*`;
}

# tunnel all traffic including DNS, except the specified domain(s).
#
# Examples:
#  tnlbut youku.com
#  tnlbut youku.com weibo.com
#
function tnlbut() { 
  sshuttle --dns -r $TNL_SERVER `dns2ip $* | sed "s/^/-x/"` 0/0; # use sed to append '-x' prefix 
}

# vpn to a ssh server.
# 
# Examples:
#  vpnto my_office_server      # host in ~/.ssh/config
#  vpnto user@123.123.123.123
#
function vpnto() {
  sshuttle -HNr $1;
}