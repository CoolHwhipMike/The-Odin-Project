
const btnRock = document.querySelector("#btnRock");
btnRock.addEventListener("click", () => {
    playRound("rock", computerPlay());
});

const btnPaper = document.querySelector("#btnPaper");
btnPaper.addEventListener("click", () => {
    playRound("paper", computerPlay());
});

const btnScissors = document.querySelector("#btnScissors");
btnScissors.addEventListener("click", () => {
    playRound("scissors", computerPlay());
});

const divResults = document.querySelector("#divResults");

let playerScoreNum = 0;
let computerScoreNum = 0;
const divScore = document.querySelector("#divScore");
const playerScore = document.createElement("p");
playerScore.textContent = `Your score is ${playerScoreNum}`;
divScore.appendChild(playerScore);


const computerScore = document.createElement("p");
computerScore.textContent = `The computer score is ${computerScoreNum}`;
divScore.appendChild(computerScore);




// A function that picks a word at random for the computer opponent.
function computerPlay() {
    const choices = ["rock", "paper", "scissors"];
    const rand = Math.floor(Math.random() * choices.length);

    return choices[rand];
}

// A function that determines the round winner.
function playRound(playerSelection, computerSelection) {
    if (playerSelection === computerSelection) {
        const tieText = document.createElement("p");
        tieText.textContent = "It's a tie!";
        divResults.appendChild(tieText);
    } else if (playerSelection === "rock" && computerSelection === "scissors") {
        const winText = document.createElement("p");
        winText.setAttribute("style", "background-color: green;");
        winText.textContent = "You win! Rock beats Scissors.";
        divResults.appendChild(winText);
        playerScoreNum += 1;
        playerScore.textContent = `Your score is ${playerScoreNum}`;
        divScore.appendChild(playerScore);
    } else if (playerSelection === "paper" && computerSelection === "rock") {
        const winText = document.createElement("p");
        winText.setAttribute("style", "background-color: green;");
        winText.textContent = "You win! Paper beats Rock.";
        divResults.appendChild(winText);
        playerScoreNum += 1;
        playerScore.textContent = `Your score is ${playerScoreNum}`;
        divScore.appendChild(playerScore);
    } else if (playerSelection === "scissors" && computerSelection === "paper") {
        const winText = document.createElement("p");
        winText.setAttribute("style", "background-color: green;");
        winText.textContent = "You win! Scissors beats Paper.";
        divResults.appendChild(winText);
        playerScoreNum += 1;
        playerScore.textContent = `Your score is ${playerScoreNum}`;
        divScore.appendChild(playerScore);
    } else if (computerSelection === "rock" && playerSelection === "scissors") {
        const loseText = document.createElement("p");
        loseText.setAttribute("style", "background-color: red;");
        loseText.textContent = "You Lose! Rock beats Scissors.";
        divResults.appendChild(loseText);
        computerScoreNum += 1;
        computerScore.textContent = `The computer score is ${computerScoreNum}`;
        divScore.appendChild(computerScore);
    } else if (computerSelection === "paper" && playerSelection === "rock") {
        const loseText = document.createElement("p");
        loseText.setAttribute("style", "background-color: red;");
        loseText.textContent = "You Lose! Paper beats Rock.";
        divResults.appendChild(loseText);
        computerScoreNum += 1;
        computerScore.textContent = `The computer score is ${computerScoreNum}`;
        divScore.appendChild(computerScore);
    } else if (computerSelection === "scissors" && playerSelection === "paper") {
        const loseText = document.createElement("p");
        loseText.setAttribute("style", "background-color: red;");
        loseText.textContent = "You Lose! Scissors beats Paper.";
        divResults.appendChild(loseText);
        computerScoreNum += 1;
        computerScore.textContent = `The computer score is ${computerScoreNum}`;
        divScore.appendChild(computerScore);
    };

    if (playerScoreNum >= 5) {
        alert("You won the game!");
        playerScoreNum = 0;
        computerScoreNum = 0;
        playerScore.textContent = `The computer score is ${computerScoreNum}`;
        computerScore.textContent = `The computer score is ${computerScoreNum}`;
    } else if (computerScoreNum >= 5) {
        alert("The computer won the game.");
        playerScoreNum = 0;
        computerScoreNum = 0;
        playerScore.textContent = `The computer score is ${computerScoreNum}`;
        computerScore.textContent = `The computer score is ${computerScoreNum}`;
    }
};