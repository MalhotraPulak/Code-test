#!/bin/bash
g++ -std=c++17 tc.cpp
g++ -std=c++17 my.cpp -o my.out
for i in {1..10000}
do
   ./a.out > input.txt
   a=`./wwv.out < input.txt`
   b=`./my.out < input.txt`
   if [ "$a" != "$b" ]; then 
	cat input.txt >  output.txt
	break
   fi
done
