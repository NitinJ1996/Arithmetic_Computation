#!/bin/bash -x

read -p "Enter a value: " a
read -p "Enter a value: " b
read -p "Enter a value: " c

p=`echo $a+$b*$c | bc -l`
q=`echo $a*$b+$c | bc -l`
r=`echo $c+$a/$b | bc -l`
s=`echo $a%$b+$c | bc -l`

#sorting the array descending order
function sort_array_desc(){
   sorted_array_desc=`echo "${arithmeticArray[@]}" | sed 's/ /\n/g' | sort -g -r | sed -z 's/\n/ /g'`
}

#creating dictionary to Store computed values
declare -A arithmeticComputation
arithmeticComputation+=( ["1"]=$p ["2"]=$q ["3"]=$r ["4"]=$s )

#moving values from dictionary to array
count=0
for num in "${!arithmeticComputation[@]}"
do
	arithmeticArray[((count++))]=${arithmeticComputation[$num]}
done

#calling sort funtion
sort_array_desc ${arithmeticArray[@]}

