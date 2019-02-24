#!/bin/bash
#Description
#to get the highest lift expectancy across years
#usage: ./FirstScript.sh

#define an input variable
# $1 is a special value that accepts values from the command line
#input=Data/ByCountry/Mexico.txt
input=$1
output=HighestLE_Mexico.txt

# Commment to get hightest LE from Mexico
#cut -f1,3,4 Data/ByCountry/Mexico.txt | sort -nk3 | tail -n1 > HighestLE_Mexico.txt.
cut -f1,3,4 $input | sort -nk3 | tail -n1 > $output
