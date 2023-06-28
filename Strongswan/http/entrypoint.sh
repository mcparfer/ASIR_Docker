#!/bin/sh
cd /var/www
ip route add 10.10.27.0/24 via 10.9.141.10
ip route add 10.9.141.0/24 via 10.10.27.10
php -S 0.0.0.0:80