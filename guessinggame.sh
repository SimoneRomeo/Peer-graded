#!/usr/bin/env bash
# File: guessinggame.sh

#Determine actual number of files in directory
actual_num_files=$(ls | wc -l)
#set guess_right flag to zero.
guess_right=0

#Define a function that is given two numbers (a,b) and informs user if (i) a>b, (ii) a<b, or (iii)a=b.
compare_numbers() {
  if [[ $1 > $2 ]]			#If guess is too high, tell user its too high.
  then
    echo "Sorry, your guess too high."
  elif [[ $1 < $2 ]]		#If guess is too high, tell user its too low.
  then
    echo "Sorry, you guess was too low."
  elif [[ $1 = $2 ]]		#If guess is correct, tell user its correct.
  then
    echo "Congratulations!  You guessed correctly!"
    return 1
  else
    echo "This shouldn't happen"
  fi
  return 0
}

#Until the guess_right flag is set to one, continue to ask for aguess
while [[ $guess_right == 0 ]]
do
  #Ask for guess for number of files in directory
  echo "Please guess how many files are in the current directory:"
  read read_guess

  compare_numbers "$read_guess" "$actual_num_files"
  guess_right=$?
done
