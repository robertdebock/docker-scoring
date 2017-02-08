#!/bin/sh

lowstdev=$(/data/standarddeviation.sh | sort -n -k 2 | head -n1 | awk '{print $1}')
highstdev=$(/data/standarddeviation.sh | sort -n -k 2 -r | head -n1 | awk '{print $1}')

lowmean=$(/data/mean.sh | sort -n -k2 | head -n1 | awk '{print $1}')
highmean=$(/data/mean.sh | sort -n -k2 -r | head -n1 | awk '{print $1}')

lowest=$(/data/total.sh | sort -n -k2 | head -n1 | awk '{print $1}')
highest=$(/data/total.sh | sort -n -k2 -r | head -n1 | awk '{print $1}')

least=$(/data/count.sh | sort -n -k2 | head -n1 | awk '{print $1}')
most=$(/data/count.sh | sort -n -k2 -r | head -n1 | awk '{print $1}')

echo "# Analysis of technology knowledge."
echo ""
echo "Our team can clearly work with ${highmean}."
echo "We all feel insecure about ${lowmean}."
echo "We are most similarly knowledgable on ${lowstdev}."
echo "Our expertise level differs most for ${highstdev}."

if [ "${highest}" != "${highmean}" ] ; then
  echo "Most knowledge spread throughout the team is on ${highest}."
fi

if [ "${lowest}" != "${lowmean}" ] ; then
  echo "The team may miss some knowledge about ${lowest}."
fi

if [ "${least}" != "${most}" -a "${least}" != "${lowest}" ] ; then
  echo "Not everybody in the team has knowledge on ${least}."
fi
