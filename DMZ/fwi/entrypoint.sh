#!/bin/sh
ulogd -d
ip route del default
ip route add default via 192.168.1.10
#iptables -P FORWARD DROP
tail -f /dev/null