#!/bin/sh
ulogd -d
ip route del default
ip route add default via 172.16.128.10
ip route add 10.0.0.0/24 via 192.168.1.20
tail -f /dev/null