#!/bin/bash
for i in {1,2,3} 
do 
  ./main < $i.in > out; 
  diff -b -s out $i.out; 
  es=$?
    if [ $es -ne 0 ]; then 
        echo "defeat"
    else 
        echo "success"
    fi
done;
