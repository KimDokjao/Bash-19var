#!/bin/bash

if [[ $1 == "--help" ]]; then
	echo "This script counts the perimeter of the rectangle"
	echo "Usage: ./1-19.sh [length] [width]"
	exit 0
fi

#Function to check if the argument is a number
check() {
	if ! [[ $1 =~ ^[1-9][0-9]*$ ]]; then
		echo "Is not a positive integer"
		exit 1
	fi
}

#Get the length of the rectangle
read -p "Enter the length of the rectangle: " length
check $length

#Get the width of the rectangle
read -p "Enter the width of the rectangle: " width
check $width

#Calculate the perimeter
perimeter=$((2*length + 2*width))
#Output the result
echo "Perimeter is $perimeter"
#Write the result to a file
echo "The perimeter of the rectangle is $perimeter" > out.txt
echo "The result is written in out.txt"
