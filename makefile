README.md: guessinggame.sh
	echo "# The Guessing Game" > README.md
	echo "### By Tomas Gregoret\n" >> README.md
	echo "Make was run on: $$(date)\n" >> README.md
	echo "The number of lines in guessinggame.sh is: $$(cat guessinggame.sh | wc -l)" >> README.md	
clean:
	rm README.md
