#!/bin/bash

# take input n
read -p "Enter number of copies: " n

# loop through 1 to n
for ((i=1; i<=n; i++))
do
  # divide all numbers by i and save to new file
  awk '{print $1 / '$i'}' data.txt > "data_$i.txt"
done