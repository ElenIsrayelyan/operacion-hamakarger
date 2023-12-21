#!/bin/bash

#example 1
count=0
while [ $count -le 20 ]; do
	echo $count
	count=$((count + 2))
done
#endexample

#example 2
count=0
until [ $count -gt 20 ]; do
	echo $count
	count=$((count + 2))
done
#endexample

#example 3
index=0
while true; do
	square=$((index * index))
	if [ $square -gt 1000 ]; then
		break
	fi
	echo "Square of $index is $square"
	index=$((index + 1))
done
#endexample

#example 4
for ((count = 0; count <= 20; count += 2)); do
	echo $count
done
#endexample

#example 5
while true; do
	read -r -p "Enter an integer or 'q' to exit: " input
	if [ "$input" == "q" ]; then
		break
	fi
	echo "Double of $input is $((input * 2))"
done
#endexample

#example 6
index=1
while [ $index -le 5 ]; do
	touch ./file_$index.txt
	index=$((index + 1))
done
#endexample

#example 7
for ((i = 1; i <= 3; i++)); do
	echo $((RANDOM % 31))
done
#endexample

#example 8
for file in *; do
	echo "$file"
done
#endexample

#example 9
for file in "$@"; do
	shortest_word=$(awk '{ print length, $0 }' "$file" | sort -n | head -n 1 | cut -d" " -f2-)
	echo "Shortest word in $file: $shortest_word"
done
#endexample

#example 10
for file in "$@"; do
	if [ -e "$file" ]; then
		echo "$file exists."
		if [ -r "$file" ]; then
			echo "$file is readable."
		else
			echo "$file is not readable."
		fi
	else
		echo "$file does not exist."
	fi
done
#endexample
