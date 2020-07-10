#!/bin/bash -x

read -p "Enter a value: " a
read -p "Enter a value: " b
read -p "Enter a value: " c

p=`echo $a+$b*$c | bc -l`
