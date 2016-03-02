#!/bin/sh

fname=$1
part="${fname##*/}"
variable="${part%.*}"
echo '$'$variable' = ['
cat $fname | sed s'/,/ => /' | awk ' { print "  "$0"," } '
echo '];'

