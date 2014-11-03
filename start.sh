#!/bin/bash


run(){
local file
  
while read line;do
  file=BANK/$line
  python $file
done < <( cat tasks.txt )
}

run
