#!/bin/sh
ip route add 10.0.0.0/24 via 192.168.1.20
ip route del default
ip route add default via 192.168.1.10
cd /var/www
php -S 0.0.0.0:80