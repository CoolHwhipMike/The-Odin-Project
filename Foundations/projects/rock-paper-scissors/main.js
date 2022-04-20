const modal = document.querySelector(".modal");
const openModal = document.querySelector(".openModal");
const closeModal = document.querySelector(".closeModal");

openModal.addEventListener("click", () => modal.showModal());
closeModal.addEventListener("click", () => modal.close());

// Initialization and getting input
let playerScore = 0;
let computerScore = 0;
let roundCount = 0;

const playerScoreOutput = document.querySelector(".playerScoreOutput");
const computerScoreOutput = document.querySelector(".computerScoreOutput");
const roundCountOutput = document.querySelector(".roundCountOutput");
const userPlayOutput = document.querySelector(".userPlayOutput");
const computerPlayOutput = document.querySelector(".computerPlayOutput");

const btnRock = document.querySelector(".btnRock");
const btnPaper = document.querySelector(".btnPaper");
const btnScissors = document.querySelector(".btnScissors");

btnRock.addEventListener("click", () => {
    execGame("rock");
});
btnPaper.addEventListener("click", () => {
    execGame("paper");
});
btnScissors.addEventListener("click", () => {
    execGame("scissors");
});

// Menu buttons
const btnReset = document.querySelector(".btnReset");

btnReset.addEventListener("click", () => gameReset());

// A function that resets the game.
function gameReset() {
    playerScore = 0;
    computerScore = 0;
    roundCount = 0;

    computerScoreOutput.textContent = computerScore;
    playerScoreOutput.textContent = playerScore;
    roundCountOutput.textContent = roundCount;
    userPlayOutput.textContent = "-";
    computerPlayOutput.textContent = "-";
}

// A function that picks a word at random for the computer opponent.
function computerPlay() {
    const choices = ["rock", "paper", "scissors"];
    return choices[Math.floor(Math.random() * choices.length)];
}

// A function that determines the game winner
function gameWinner() {
    if (playerScore >= 5) {
        alert("You beat the computer!");
        playerScore = 0;
        computerScore = 0;
        roundCount = 0;
        gameReset();
    }
    if (computerScore >= 5) {
        alert("The computer beat you!");
        playerScore = 0;
        computerScore = 0;
        roundCount = 0;
        gameReset();
    }
}

// A function to determine the round winner
function playRound(playerSelection, computerSelection) {
    if (playerSelection === computerSelection) return null;
    if ((playerSelection === "rock" && computerSelection === "scissors") ||
        (playerSelection === "paper" && computerSelection === "rock") ||
        (playerSelection === "scissors" && computerSelection === "paper")) return true;
    return false;
}

// A function that plays one round of rps
function execGame(userClick) {
    const computer = computerPlay();
    const result = playRound(userClick, computer);

    roundCount += 1;
    roundCountOutput.textContent = roundCount;

    userPlayOutput.textContent = userClick;
    computerPlayOutput.textContent = computer;


    if (result === true) {
        playerScore += 1;
        playerScoreOutput.textContent = playerScore;
    };

    if (result === false) {
        computerScore += 1;
        computerScoreOutput.textContent = computerScore;
    };

    gameWinner();
}