#!/bin/bash

data_file="data.txt"

declare -A data
readarray -t data < "$data_file"

x_y_z=(${data[@]:0:3})

grater_count=0
smaller_count=0

for i in "${x_y_z[@]}"; do
lines=($i)
for num in "${lines[@]}"; do
sqrt_sum=$(echo "scale=4; sqrt(${lines[0]}^2 + ${lines[1]}^2 + ${lines[2]}^2)" | bc)
if (( $(echo "$sqrt_sum > 100*sqrt(3)/2" | bc -l) )); then
((grater_count++))
else
((smaller_count++))
fi
done
done

echo "The grater numbers are: $grater_count" >> gr_sm.txt
echo "The smaller numbers are: $smaller_count" >> gr_sm.txt