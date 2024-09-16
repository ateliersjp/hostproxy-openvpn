#!/usr/bin/env bash

if [ "$1" = 'hostproxy' ]; then
  shift
fi

openvpn /dev/stdin | awk '{ print } /Initialization Sequence Completed/ { system("pkill sleep") }' &
sleep 60 && exit
hostproxy "$@" &
exec curl -s "https://ppng.io/$(hexdump -ve '1/1 "%02x"' -n 32 /dev/random)"
