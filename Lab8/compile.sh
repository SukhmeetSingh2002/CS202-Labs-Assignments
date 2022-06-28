#!/bin/bash  
FILENAME=${1?Name of file not provided}
FILENAME_=${FILENAME:0:-2}
flex "$FILENAME_.l" 

if [ $? -ne 0 ]
then
    exit 1
fi


bison -d "$FILENAME_.y"

if [ $? -ne 0 ]
then
    exit 1
fi

echo "DONE"
g++ "$FILENAME_.tab.c" lex.yy.c -ll -o $FILENAME_
if [ $? -ne 0 ]
then
    exit 1
fi

./$FILENAME_ ${2?Name of input file not provided}