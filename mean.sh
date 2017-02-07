#!/bin/sh

cat /data/input.txt | while read technology scores ; do
  values=$(echo "$scores" | wc -w)
  total=$(echo "$scores" | sed 's/ /+/g' | bc)
  mean=$(echo "scale=1; $total/$values" | bc)
  echo "${technology} ${mean}"
done
