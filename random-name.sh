#!/bin/bash

# generates random names

# lists
malelist="male-names.txt"
femalelist="female-names.txt"
lastlist="last-names.txt"


r_male=$(head -$((${RANDOM} % `wc -l < $malelist` + 1)) $malelist | tail -1)
r_female=$(head -$((${RANDOM} % `wc -l < $femalelist` + 1)) $femalelist | tail -1)
r_mlast=$(head -$((${RANDOM} % `wc -l < $lastlist` + 1)) $lastlist | tail -1)
r_flast=$(head -$((${RANDOM} % `wc -l < $lastlist` + 1)) $lastlist | tail -1)

echo Male:   $r_male $r_mlast
echo Female: $r_female $r_flast
