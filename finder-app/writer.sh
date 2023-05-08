#!/bin/sh

usage(){
    echo "Usage : ./writer.sh <writefile> <writestr>"
    echo "There should be 2 arguments :"
    echo "\t 1) full file directory path"
    echo "\t 2) string to be written"
}

if [ $# -lt 2 ]; then
    usage
    exit 1
fi

writefile=$1
writestr=$2

touch "$writefile"

if [ -d "$writefile" ]; then
    echo "$writestr" > "$writefile"
    exit 0
else
    echo "ERROR: $writefile file cannot be created."
    exit 1
fi
