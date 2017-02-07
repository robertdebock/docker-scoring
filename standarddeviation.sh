#!/bin/sh

cat /data/input.txt | while read technology scores ; do
  printf "${technology} "
  echo "${scores}" | awk '{ A=0; V=0; for(N=1; N<=NF; N++) A+=$N ; A/=NF ; for(N=1; N<=NF; N++) V+=(($N-A)*($N-A))/(NF-1); print sqrt(V) }' | while read output ; do
    echo "scale=1; ${output}/1" | bc
  done
done
