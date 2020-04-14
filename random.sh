#!/bin/bash
#mooqita first challenge

#Random size from 1 to 15 characters with A..Z - a..z - 0..9 String creation
echo -n '' >  rndfile

str_count=0
while [[ $(( $str_count/1024 )) -lt 1000 ]]
#while [[ `ls -la rndfile | awk '{ print $5 }'` -lt 1024000 ]]
do

	str_size=$(( $RANDOM/2185+1 ))
	str_count=$(( $str_count+$str_size+1 ))
	echo `cat /dev/urandom | tr -dc [:alnum:] | head -c $str_size` >> rndfile

done

echo "new file with random strings is rndfile"


#Sorting  file
cat rndfile | sort -d -o rndsort
echo "sorted file with random strings is rndsort"



#removing "a" from sorted file more simple solution
grep -v 'a' rndsort > rnd_without_a
echo -n 'There have been deleted '
echo -n `grep 'a' rndsort | wc -l`
echo " lines"
echo "new sorted file without lines, containing 'a', is rnd_without_a" 
exit 0
