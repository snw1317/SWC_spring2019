#!/bin/bash

#Description
#get the highest value of a column

#usage: ./FourthScript.sh input column > output  #notice new usage - we are redirecting output to file here

# $1 is a special variable that accepts value from the command line
input=$1  # $1 has value of the first command-line argument
colNum=$2  # $2 holds the value of the column number you want to analyze
#command
cut -f1,3,$colNum $input|sort -nk$colNum|tail -n1 