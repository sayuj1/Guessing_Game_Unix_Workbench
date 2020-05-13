#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	num_of_files=$(ls -A | wc -l)
	while true;
	do 
		echo "Take a guess and enter number of files you think in the current directory"
		read answer
		if ! [[ $answer =~ ^[0-9]+$ ]]
		then
			echo "Please enter a valid number!"
		elif [ $answer -ne $num_of_files ]
		then
			if [ $answer -gt $num_of_files ]
			then
				echo "Your guess is more than the actual number of files"
			else
				echo "Your guess is less than the actual number of files"
			fi
		else
			echo "Congratulations, your guess is right!"
			break;
		fi
	done
}

echo "Guessing the number of files in the current directory!"

guessinggame
