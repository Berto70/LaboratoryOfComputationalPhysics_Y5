#!/bin/bash

# take input n
read -p "Enter number of copies: " n

n=$1

for ((i=1; i<=n; i++))
do
  filename="data_$i.txt"
  cp data.txt $filename
  while read -r line; do
    echo "$(echo "scale=2;$line/$i" | bc)" >> $filename
  done < $filename
done