#!/bin/bash -x

read -p "enter word check validate" input
pattern="^[A-Z][a-zA-Z]{2,}$"
if [[ $input =~ $pattern ]]
then
	echo "valid"
else
	echo "invalid"
fi
