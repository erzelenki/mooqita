#!/bin/bash
#mooqita first challenge

#Random size from 1 to 15 characters with A..Z - a..z - 0..9 String creation
echo -n >  rndfile
str_count=0
while [[ $(( $str_count/1024 )) -lt 1000 ]]
do

str_size=$(( $RANDOM/2185+1 ))
str_count=$(( $str_count+$str_size+1 ))
cat /dev/urandom | tr -dc [:alnum:] | head -c $str_size >> rndfile
echo >> rndfile
done
ls -lh rndfile
ls -l rndfile
wc -c rndfile
