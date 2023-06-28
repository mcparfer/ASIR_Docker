#!/bin/sh
ipsec restart
iptables -t nat -A POSTROUTING -d 10.10.27.0/24 -s 10.9.141.0/24  -j MASQUERADE
tail -f /dev/null