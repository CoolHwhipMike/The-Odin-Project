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

// const buttons = document.querySelectorAll(".btn");
// buttons.forEach(button => button.addEventListener("click", getData));
// let number = '';

// // A function to fill the grid units
// function getData() {
//     number += this.innerHTML;
//     // console.log(number);

// }