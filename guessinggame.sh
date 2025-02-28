#!/usr/bin/env bash

# Function to count files in the current directory
function count_files {
    echo $(ls -1 | wc -l)
}

# Get the actual file count
file_count=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while true; do
    read -p "Enter your guess: " guess

    if [[ $guess -eq $file_count ]]; then
        echo "🎉 Congratulations! You guessed it right!"
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
