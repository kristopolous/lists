#!/bin/sh
# Create a two-gram set of a file, given as the argument
#
# E.g.:
#
#   /twogram.sh ../top10000en.txt > en-twogram.txt

shuf $1 | pr -s" " -t -m $1 - 
