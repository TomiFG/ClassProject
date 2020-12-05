echo "Welcome to The Guessing Game"
echo " "
echo "Take a guess about how many files are in this directory"

file_number=$(ls -l | egrep -v "drw|total" | wc -l)

function get_guess {
	echo "Enter your guess: "
	read response
}

get_guess

while [[ response -ne file_number ]]
do
	if [[ response -lt file_number ]]
	then
		echo "Your guess was too low"
	elif [[ response -gt file_number ]]
	then
		echo "Your guess was to high"
	fi
	
	get_guess
done

if [[ response -eq file_number ]]
then
	echo "Congratulations! Your guess was right!"
	echo "You won The Guessing Game"
fi
