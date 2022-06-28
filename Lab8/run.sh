#!/bin/bash  
FILENAME=${1?Name of file not provided}
FILENAME_=${FILENAME:0:-2}
flex $FILENAME

if [ $? -ne 0 ]
then
    exit 1
fi

echo "Generated lex.yy.c"

g++ lex.yy.c -o $FILENAME_ -ll 

if [ $? -ne 0 ]
then
    exit 1
fi

echo "Generated $FILENAME_"
./$FILENAME_