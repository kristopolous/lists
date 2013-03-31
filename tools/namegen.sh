#!/bin/bash
#
# Generate names

cat ../male-first-names ../female-first-names |\
  shuf      |\
  cut -f1   |\
  pr -s" " -t -m - ../surnames |\
  cut -f1 
