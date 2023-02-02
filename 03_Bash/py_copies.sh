#!/bin/bash
function make_copies {
  n=$1
  data=()
  while read line; do
    data+=("$line")
  done < "data.txt"

  for ((i=1; i<=n; i++)); do
    filename="data_$i.txt"
    > "$filename"
    for line in "${data[@]}"; do
      echo $(echo "$line" | awk '{for (i=1; i<=NF; i++) printf "%.2f ", $i/'$i'}') >> "$filename"
    done
  done
}

read -p "Enter the value of n: " n
make_copies $n