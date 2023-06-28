#!/bin/sh

if  [ $HOSTNAME == "pc_int" ]
  then 
	ip route add 192.168.1.0/24 via 10.0.0.10
	ip route del default
	ip route add default via 10.0.0.10
fi
tail -f /dev/null
