// ========================================= //
// =============== Variables =============== //
// ========================================= //

let number1 = '';
let number2 = '';
let operation = '';

const bigDisplay = document.querySelector(".bigDisplay");
const smallDisplay = document.querySelector(".smallDisplay");

const buttons = document.querySelectorAll(".btn");
buttons.forEach(button => button.addEventListener("click", getInput));

// ========================================= //
// =============== FUNCTIONS =============== //
// ========================================= //

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

// Operator
// This may need to convert to string or number.
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

// ========================================= //
// ============ Event Listeners ============ //
// ========================================= //





function getInput() {
    if (this.innerHTML === '=') {
        let result = operate(operation, Number(number1), Number(number2));
        smallDisplay.textContent = `${number1} ${operation} ${number2} =`;
        bigDisplay.textContent = result;
        number1 = '';
        number2 = '';
        operation = '';
        return;
    }
    if (this.innerHTML === '+' || this.innerHTML === '-' || this.innerHTML === '*' || this.innerHTML === '/') {
        if (operation !== '') {
            let result = operate(operation, Number(number1), Number(number2));
            bigDisplay.textContent = '';
            number1 = result;
            number2 = '';
            operation = '';
        }

        operation = this.innerHTML;
        smallDisplay.textContent = `${number1} ${operation}`;
        bigDisplay.textContent = '';
        return;
    }

    if (operation === '') {
        smallDisplay.textContent = '';
        number1 += this.innerHTML;
        bigDisplay.textContent = number1;
    }

    if (operation !== '') {
        number2 += this.innerHTML;
        bigDisplay.textContent = number2;
    }

}