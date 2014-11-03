#!/bin/bash
file_list=/tmp/list.txt



create(){
find *.py -type f > $file_list
cat $file_list
}


run(){
local file
  
while read line;do
  file="$line""
  test -f $file && ( python $file )
done < <( $file_list )
}

create
run
