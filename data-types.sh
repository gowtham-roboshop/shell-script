#!/bin/bash

var1=10
var2=20
var3=siva

echo "$var1+$var2"
echo "$(($var1+$var2+$var3))"

declare -i COUNT=5

COUNT=COUNT+1

echo "count is $COUNT"

FRUITS=("APPLE" "BANANA" "PAPPAYA")
echo "all fruits: ${FRUITS[@]}"
echo "First fruit: ${FRUITS[1]}"

name="siva kumar reddy m"

echo "${name}ettukuru"
