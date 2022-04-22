// FUNCTIONS //

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

// Operator (Symbol)
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

console.log(operate('+', 5, 5));
console.log(operate('-', 5, 5));
console.log(operate('*', 5, 5));
console.log(operate('/', 5, 5));