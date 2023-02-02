#!/bin/bash
data=($(awk '{print $0}' data.txt))
even_count=0
odd_count=0

for i in "${data[@]}"; do
  for num in $i; do
    if ((num % 2 == 0)); then
      ((even_count++))
    else
      ((odd_count++))
    fi
  done
done

echo "The even numbers are: $even_count" >> even_odd.txt
echo "The odd numbers are: $odd_count" >> even_odd.txt