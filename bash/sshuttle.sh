#!/usr/bin/env bash

# sshuttle helpers from https://github.com/teohm/dotfiles/blob/master/public/.functions.d/sshuttle.bash
# with some personal additions

# set default SSH server:
#   user@hostname or a host in ~/.ssh/config
TNL_SERVER=default_ssh

# tunnel all traffic including DNS
alias tnl="sshuttle --dns -vr $TNL_SERVER 0/0"

# tunnel only DNS
alias tnldns='sshuttle --dns $TNL_SERVER 0/0'

# reset tunnel
alias tnlreset='sudo ipfw -q -f flush'

# tunnel all traffic, including DNS.
#
# Examples:
#  tnlhost myfavouritehost
#  tnlhost # connects to default_ssh
#
function tnlhost() {
	local HOST=$TNL_SERVER
	if ! test -z "$1"; then HOST=$1; fi
	sshuttle --dns -r $HOST 0/0
}

# tunnel only port 80, including DNS.
#
# Examples:
#  tnlweb myfavouritehost
#  tnlweb # connects to default_ssh
#
function tnlweb() {
	local HOST=$TNL_SERVER
	if ! test -z "$1"; then HOST=$1; fi
	sshuttle --dns -r $HOST 0/0
}

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
  sshuttle -vr $TNL_SERVER `dns2ip $*`;
}

# tunnel all traffic including DNS, except the specified domain(s).
#
# Examples:
#  tnlbut youku.com
#  tnlbut youku.com weibo.com
#
function tnlbut() {
  sshuttle --dns -vr $TNL_SERVER `dns2ip $* | sed "s/^/-x/"` 0/0; # use sed to append '-x' prefix
}

# vpn to a ssh server.
#
# Examples:
#  vpnto my_office_server      # host in ~/.ssh/config
#  vpnto user@123.123.123.123
#
function vpnto() {
  sshuttle -HNvr $1;
}