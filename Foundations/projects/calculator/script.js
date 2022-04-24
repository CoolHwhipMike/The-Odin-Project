// ========================================================================= //
// =============================== VARIABLES =============================== //
// ========================================================================= //

let number1 = '';
let number2 = '';
let runningTotal = '';
let operation = '';

const bigDisplay = document.querySelector(".bigDisplay");
const smallDisplay = document.querySelector(".smallDisplay");

const buttons = document.querySelectorAll(".btn");
buttons.forEach(button => button.addEventListener("click", getInput));

// ========================================================================= //
// =============================== FUNCTIONS =============================== //
// ========================================================================= //

// Core Math Functions

// Addition
function add(num1, num2) {
    return num1 + num2;
}

// Subtraction
function subtract(num1, num2) {
    return num1 - num2;
}

// Multiplication
function multiply(num1, num2) {
    return num1 * num2;
}

// Division
function divide(num1, num2) {
    return num1 / num2;
}

// Helper Functions

// Operator
// TODO This may need to convert to string or number.
function operate(operator, num1, num2) {
    switch (operator) {
        case '+':
            return add(num1, num2);
            break;
        case '-':
            return subtract(num1, num2);
            break;
        case '*':
            return multiply(num1, num2);
            break;
        case '/':
            return divide(num1, num2);
            break;
    };
}

function getInput() {
    if (this.innerHTML === 'clear') {
        number1 = '';
        number2 = '';
        operation = '';
        result = '';
        smallDisplay.textContent = '';
        bigDisplay.textContent = '0';
        return;
    }

    if (this.innerHTML === '=') {
        if (number2 === '0' && operation === '/') {
            bigDisplay.textContent = 'Whoa, you can\'t do that.'
            number2 = '';
            return;
        }
        let result = operate(operation, Number(number1), Number(number2));
        smallDisplay.textContent = `${number1} ${operation} ${number2} =`;
        bigDisplay.textContent = +result.toFixed(5);
        number1 = result;
        number2 = '';
        operation = '';
        return;
    }

    if (this.innerHTML === '+' || this.innerHTML === '-' || this.innerHTML === '*' || this.innerHTML === '/') {
        if (number2 === '0' && operation === '/') {
            bigDisplay.textContent = 'Whoa, you can\'t do that.'
            number2 = '';
            return;
        }

        if (operation !== '') {
            let result = operate(operation, Number(number1), Number(number2));
            bigDisplay.textContent = '';
            number1 = result;
            number2 = '';
            operation = '';
        }

        operation = this.innerHTML
        smallDisplay.textContent = `${number1.toFixed(5)} ${operation}`;
        bigDisplay.textContent = '';
        return;
    }

    if (operation === '') {
        smallDisplay.textContent = '';
        if (this.innerHTML === '.' && number1.includes('.')) {
            return;
        }
        number1 += this.innerHTML;
        bigDisplay.textContent = number1;
    }

    if (operation !== '') {
        if (this.innerHTML === '.' && number2.includes('.')) {
            return;
        }
        number2 += this.innerHTML;
        bigDisplay.textContent = number2;
    }
}