#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    echo $(ls -1A | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

correct=$(get_file_count)

while true; do
    echo -n "Enter your guess: "
    read guess

    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [ $guess -lt $correct ]; then
        echo "Your guess is too low."
    elif [ $guess -gt $correct ]; then
        echo "Your guess is too high."
    else
        echo "Congratulations! You guessed correctly."
        break
    fi
done