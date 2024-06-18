#!/bin/bash

echo "Connected clients:"
netstat -an | grep:80 | grep ESTABLISHED | wc -1

echo "CPU usage:"
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)% id.*/\1/" | awk '{print 100 -$1"%"}'

echo "Bandwidth usage:"
vnstat -1 -i eth0
