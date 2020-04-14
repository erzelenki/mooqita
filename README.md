# mooqita
learning bash

https://github.com/erzelenki/mooqita


$RANDOM/2185+1

Randomly gives integer number from 1 to 15 with same probability for each number,
so we will have no empty lines and all sizes from 1 to 15 will appear in the same frquency.


echo `cat /dev/urandom | tr -dc [:alnum:] | head -c $str_size` >> rndfile

This string takes from /dev/urandom characters cut all that are not 
number and letters and then passes to head -c 


str_count=$(( $str_count+$str_size+1 ))

This code is checking size of current file by counting already written bytes 
+ 1 byte for each line (\n)

while [[ `ls -la rndfile | awk '{ print $5 }'` -lt 1024000 ]]
also is checking file size, but working 2 times slower than solution abowe

time ./random.sh --- first solution
real    6m13.226s
user    8m12.222s
sys     4m21.279s

time ./random.sh --- first solution
real    13m0.828s
user    14m35.656s
sys     10m0.239s  





cat rndfile | sort -d -o rndsort

Since there is no spaces and no special characters there is no difference with default sort or 
sort -d


grep -v 'a' rndsort > rnd_without_a

Cut all strings with character "a" inside


grep 'a' rndsort | wc -l

count how many lines we have with character "a"


The task:
Write a script using /bin/bash that does the following:

    Create a series of random numbers and strings of characters and write them to a file, 
no more than 15 characters for each line. As characters assume the Latin Alphabet, [A-Za-z], 
without special characters and the numbers 0,1,2,3,4,5,6,7,8,9. Example of a line with 15 
characters: 123456789aBcDeF Explain the process how you create the lines in your file.
    Control the size of the file. If the file reaches the size of 1 MiB interrupt the 
creation of more random lines. What is a good way to control the size of a file? 
Discuss what options you know and why you picked one of them. Come up with two ways 
in Linux to find the size of a file. This step is there to protect you from filling up your disk. 
You should write your script in a way that it terminates when reaching a certain size.
    Now sort the file. Select a sorting style. 
Which one did you use? Why? What is the most common command in Linux to sort a 
file and what happens when you use the default option, i.e. using no specific sorting option?
    Remove all lines that start with an “a”, no matter if it is in uppercase or lowercase. 
Safe the result into a new file. Use regular expressions to do this.
    How many lines were removed?

