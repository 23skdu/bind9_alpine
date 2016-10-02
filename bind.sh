#!/bin/sh
set -e
echo "Starting BIND"
exec /usr/sbin/named -u named -g 
