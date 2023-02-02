#!/bin/bash

# Prompt user to input the value of n
echo "Enter the value of n:"
read n

# Loop through n
for ((i=1; i<=n; i++))
do
  # Copy data.txt to a new file with the name data_$i.txt
  cp data.txt data_$i.txt
  # Divide all the numbers in data_$i.txt by i and maintain the original array structure
  awk -v div=$i '{for (j=1; j<=NF; j++) {$j=$j/div; printf "%.2f ", $j}; print ""}' data_$i.txt > temp.txt
  mv temp.txt data_$i.txt
done