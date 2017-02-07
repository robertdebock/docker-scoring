#!/bin/sh

cat /data/input.txt | while read technology scores ; do
  count=$(echo "$scores" | wc -w)
  echo "${technology} ${count}"
done
