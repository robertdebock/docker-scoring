#!/bin/sh

cat /data/input.txt | while read technology scores ; do
  total=$(echo "$scores" | sed 's/ /+/g' | bc)
  echo "${technology} ${total}"
done
