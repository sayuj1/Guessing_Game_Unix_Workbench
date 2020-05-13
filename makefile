
README.md: guessinggame.sh
	echo "# Title: Guessing Game" > README.md
	echo "Date and Time at which \'make\' program was run: " $$(date) >> README.md
	echo "\n" >> README.md
	echo "No. of lines \'guessinggame.sh\' contained:  " $$(wc -l guessinggame.sh | egrep -o "[0-9]+") >> README.md

