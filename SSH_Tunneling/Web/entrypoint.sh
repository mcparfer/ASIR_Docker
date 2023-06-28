#!/bin/sh
ssh-keygen -A
echo "inicializando web"
/bin/sh -c "php -S 10.10.0.128:80 &" webuser
echo "inicializando ssh"
exec /usr/sbin/sshd -D -e "$@"