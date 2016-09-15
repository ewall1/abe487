#!/bin/bash

set -u 

if [[ $# -lt 1 ]]; then

printf "Usage: %s requires that a file be submitted for cat-n\n" $0

exit 1

fi


i=0

while read line
do

let i++
printf "%d %s\n" $i $line

done<*.txt
