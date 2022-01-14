#!/bin/bash -x

a=$((60*40))
#1sft =0.0929 smtrs
#1acre = 43560 sft
c=0.0929

b=$(($a*$c))
echo $b
