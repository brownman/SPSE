#!/bin/bash
file_list=/tmp/list.txt



create(){
find * -type f | grep .py$ > $file_list
cat -n $file_list
}


run(){
local file
  
while read line;do
  file="$line"
  test -f $file && ( python $file )
done <  $file_list 
}

create
run
