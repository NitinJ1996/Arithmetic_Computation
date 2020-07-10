#!/bin/bash -x

read -p "Enter a value: " a
read -p "Enter a value: " b
read -p "Enter a value: " c

p=`echo $a+$b*$c | bc -l`
q=`echo $a*$b+$c | bc -l`
r=`echo $c+$a/$b | bc -l`
s=`echo $a%$b+$c | bc -l`

declare -A arithmeticComputation
arithmeticComputation+=( ["1"]=$p ["2"]=$q ["3"]=$r ["4"]=$s )
