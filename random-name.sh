#!/bin/bash

# random-name.sh
# by tag
# jumpnetter[spam] at [spam]gmail
#
# generates random names
# usage: ./random-name.sh

# lists
malelist="male-names.txt"
femalelist="female-names.txt"
lastlist="last-names.txt"

function r_pick() {
  head -$((${RANDOM} % `wc -l < $1` + 1)) $1 | tail -1
}

# gen 10 male names
echo "
Random Male Names
--------------------"
for m in {1..10}
do
  r_male=$(r_pick $malelist)
  r_mlast=$(r_pick $lastlist)
  echo $r_male $r_mlast
done

# gen 10 female names
echo "
Random Female Names
--------------------"
for f in {1..10}
do
  r_female=$(r_pick $femalelist)
  r_flast=$(r_pick $lastlist)
  echo $r_female $r_flast
done

echo
exit 0
