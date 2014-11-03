#!/bin/bash


run(){
while read line;do
  echo $line
  eval "$line"
done < <( cat tasks.txt )
}

run
