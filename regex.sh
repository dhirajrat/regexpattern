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

while [[ flag -eq 0 ]]
do
read -p "enter mobile number with country code check validate" input
pattern="^[0-9]{2}[ ][0-9]{10}"
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
read -p "enter email check validate" input
pattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
if [[ $input =~ $pattern ]]
then
        echo "valid"
        flag=0
else
        echo "invalid"
fi
done
