#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo "Enter your username:"
read USERNAME

CUSTOMER_NAME=$($PSQL "SELECT username FROM info WHERE username = '$USERNAME'")

if [[ -z $CUSTOMER_NAME ]]
then
  INSERT_NAME=$($PSQL "INSERT INTO info(username, games, best_game) VALUES('$USERNAME', 0, 0);")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  USER_INFO=$($PSQL "SELECT games, best_game FROM info WHERE username = '$USERNAME'")
  echo "$USER_INFO" | while read GAMES BAR BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST_GAME guesses."
  done
fi

ALL_GAMES=$($PSQL "SELECT games FROM info WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT best_game FROM info WHERE username = '$USERNAME'")
SECRET=$(( RANDOM % 999 + 1 ))
ATTEMPTS=0

echo "Guess the secret number between 1 and 1000:"

GUESS_NUMBER() {
  read NUMBER
  
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GUESS_NUMBER
  fi
  
  ((ATTEMPTS++))

  if [[ $NUMBER -lt $SECRET ]]
  then
    echo "It's lower than that, guess again:"
    GUESS_NUMBER "It's lower than that, guess again:"
  fi

  if [[ $NUMBER -gt $SECRET ]]
  then
    echo "It's higher than that, guess again:"
    GUESS_NUMBER "It's higher than that, guess again:"
  fi
}

GUESS_NUMBER
echo "You guessed it in $ATTEMPTS tries. The secret number was $SECRET. Nice job!"

if [[ $BEST_GAME -eq 0 ]]
then
  UPDATE_BEST_GAME=$($PSQL "UPDATE info SET best_game = $ATTEMPTS WHERE username = '$USERNAME';")
else
  if [[ $ATTEMPTS -lt $BEST_GAME ]]
  then
    UPDATE_BEST_GAME=$($PSQL "UPDATE info SET best_game = $ATTEMPTS WHERE username = '$USERNAME';")
  fi
fi

((ALL_GAMES++))
UPDATE_GAMES=$($PSQL "UPDATE info SET games = $ALL_GAMES WHERE username = '$USERNAME';")
