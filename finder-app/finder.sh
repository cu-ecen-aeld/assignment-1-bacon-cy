#!/bin/sh
usage(){
    echo "Usage: ./finder.sh <filesdir> <serachstr>"
    echo "There should include 2 arguments :"
    echo "\t 1) File Directory Path"
    echo "\t 2) String to be searched for"
}

if [ $# -lt 2 ]; then
    echo "ERROR : Invalid Number of Arguments."
    usage
    exit 1
fi

filesdir=$1
searchstr=$2

if [ -d "$filesdir" ]; then
    num_files=$(find "$filesdir" -type f | wc -l)
    matches=$(grep -r "$searchstr" "$filesdir" | wc -l)
    echo "The number of files are $num_files and the number of matching lines are $matches"
    exit 0
else
    echo "There is no such directory path $filesdir."
    exit 1
fi

