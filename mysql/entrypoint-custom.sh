#!/usr/bin/env bash

sed 's/^max_allowed_packet[ \t]*=.*$/max_allowed_packet = 512M/' -i /etc/mysql/my.cnf

exec /sbin/entrypoint.sh "$@"
