#!/bin/bash
data=$(cat data.txt)
even_count=0
odd_count=0

for i in $data
do
  if ((i % 2 == 0)); then
    ((even_count++))
  else
    ((odd_count++))
  fi
done

echo "The even numbers are: $even_count" >> even_odd_1.txt
echo "The odd numbers are: $odd_count" >> even_odd_1.txt