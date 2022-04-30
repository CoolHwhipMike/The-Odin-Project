const fibonacci = function (numberOfDigits) {
    if (numberOfDigits < 0) return "OOPS";

    let count = 0;
    let previousNumber = 1;
    let currentNumber = 0;
    let nextNumber = 0;
    while (count < numberOfDigits) {
        nextNumber = currentNumber + previousNumber;
        previousNumber = currentNumber;
        currentNumber = nextNumber;
        count++;
    }
    return currentNumber;
};

// Do not edit below this line
module.exports = fibonacci;
