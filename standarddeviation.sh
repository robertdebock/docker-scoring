#!/bin/sh

cat /data/input.txt | while read technology scores ; do
  printf "${technology} "
  echo "${scores}" | tr ' ' '\n' |  awk '{sum+=$1; sumsq+=$1*$1}END{print sqrt(sumsq/NR - (sum/NR)**2)}'
done
