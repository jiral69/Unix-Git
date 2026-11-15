#!/usr/bin/env bash
# File: guessinggame.sh

function count_files {
  local count=$(ls -1 | wc -l)
  echo "$count"
}

target=$(count_files)

echo "How many files are in the current directory?"
read guess

while [[ $guess -ne $target ]]
do
  if [[ $guess -lt $target ]]
  then
    echo "Your guess is too low. Try again:"
  else
    echo "Your guess is too high. Try again:"
  fi
  read guess
done

echo "Congrats, You guessed the correct number of files ($target)."
