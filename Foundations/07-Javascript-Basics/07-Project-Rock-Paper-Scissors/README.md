# Odin Project - Rock, Paper, Scissors

## First Iteration

### Goals
1. [&check;] Create a function called *computerPlay* that randomly picks rock, paper, or scissors for the computer opponent.
2. [&check;] Create a function that takes *playerSelection* and *computerSelection* and outputs something like "You Lose! Paper beats Rock".
3. [&check;] *plyaerSelection* must be case insensitive.
4. [&check;] Create anoter function called *game* with the *playRound* function inside that plays a 5 round game.
5. [&check;] *game* should track score and output a winner at the end.

### Pseudocode
- The computer picks rock, paper, or scissors from an array.
- The user is prompted for rock, paper, or scissors. This is case insenstive and is stored in a variable.
- The values are compared and a winner is chosen.
- We will loop over the above 5 times for a complete game.
- The score will be stored in a variable and shown at the end with a winner.

## Second Iteration

### Goals
1. [&check;] Create a button for each selection.
2. [&check;] Use and event listener to make a selection and call playRound.
3. [&check;] Add a div to display results and change console.log to DOM methods.
4. [&check;] Display running score and announce a winner when a player gets 5 points.