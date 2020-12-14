#!/bin/bash
flag=0

while [[ flag -eq 0 ]]
do
read -p "enter first name check validate" input
pattern="^[A-Z][a-zA-Z]{2,}$"
if [[ $input =~ $pattern ]]
then
        echo "valid"
	flag=1
else
	echo "invalid"
fi
done

while [[ flag -eq 1 ]]
do
read -p "enter last name check validate" input
pattern="^[A-Z][a-zA-Z]{2,}$"
if [[ $input =~ $pattern ]]
then
        echo "valid"
	flag=0
else
	echo "invalid"
fi
done
