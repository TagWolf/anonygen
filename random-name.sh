#!/bin/bash

# generates random names

# lists
malelist="male-names.txt"
femalelist="female-names.txt"
lastlist="last-names.txt"

# 10 males names
echo "
10 male names
---------------"
for m in {1..10}
do
  r_male=$(head -$((${RANDOM} % `wc -l < $malelist` + 1)) $malelist | tail -1)
  r_mlast=$(head -$((${RANDOM} % `wc -l < $lastlist` + 1)) $lastlist | tail -1)
  echo $r_male $r_mlast
done

# 10 female names
echo "
10 female names
---------------"
for f in {1..10}
do
  r_female=$(head -$((${RANDOM} % `wc -l < $femalelist` + 1)) $femalelist | tail -1)
  r_flast=$(head -$((${RANDOM} % `wc -l < $lastlist` + 1)) $lastlist | tail -1)
  echo $r_female $r_flast
done

echo
exit 0
