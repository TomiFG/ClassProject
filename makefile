README.md: guessinggame.sh
	echo "# The Guessing Game" > README.md
	echo "### By Tomas Gregoret\n" >> README.md
	echo "Make was run on: $(date)\n" >> README.md
	echo "The number of lines in guessinggame.sh is: $(cat guessinggame.sh | wc -l)" >> README.md
	
	#I'm not sure why the commands' values come out as empty in the README.md file. The same commands written here were tested on a .sh file and run with bash and they worked as expected. I don't know if it could be a problem particular to my computer.

clean:
	rm README.md
