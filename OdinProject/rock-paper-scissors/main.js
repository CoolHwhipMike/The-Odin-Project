// A function to check the player input.
function userPlay() {
    let playerChoice = prompt("Choose rock, paper, or scissors.").toLowerCase();

    return (playerChoice === "rock" || playerChoice === "paper" || playerChoice === "scissors") ? playerChoice : userPlay();
}

// A function that picks a word at random for the computer opponent.
function computerPlay() {
    const choices = ["rock", "paper", "scissors"];
    const rand = Math.floor(Math.random() * choices.length);

    return choices[rand];
}

// A function that determines the round winner.
function playRound(playerSelection, computerSelection) {
    if (playerSelection === computerSelection) {
        return null;
    } else if (playerSelection === "rock" && computerSelection === "scissors") {
        return true;
    } else if (playerSelection === "paper" && computerSelection === "rock") {
        return true;
    } else if (playerSelection === "scissors" && computerSelection === "paper") {
        return true;
    } else {
        return false;
    }
};

// A function to play a 5 round game.
function game() {
    let playerScore = 0;
    let computerScore = 0;

    for (let roundCount = 0; roundCount < 5; roundCount++) {
        let playerSelection = userPlay();
        let computerSelection = computerPlay();
        let roundResult = playRound(playerSelection, computerSelection);

        if (roundResult === true) {
            console.log(`You Win, ${playerSelection} beats ${computerSelection}!`);
            playerScore++;
        } else if (roundResult === false) {
            console.log(`You Lose, ${computerSelection} beats ${playerSelection}!`);
            computerScore++;
        } else {
            console.log("It's a TIE!");
        }
    }

    return (playerScore > computerScore) ? `You beat the computer ${playerScore} to ${computerScore}!`
        : (playerScore < computerScore) ? `The computer beat you ${computerScore} to ${playerScore}!`
            : "It's a draw!"
};

console.log(game());