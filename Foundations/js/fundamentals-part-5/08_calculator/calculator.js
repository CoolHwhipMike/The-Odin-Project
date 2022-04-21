const add = function (num1, num2) {
  return num1 + num2;
};

const subtract = function (num1, num2) {
  return num1 - num2;
};

const sum = function (arg) {
  const totalSum = arg.reduce((total, digit) => {
    return total + digit;
  }, 0);
  return totalSum;
};

const multiply = function (arg) {
  const totalProduct = arg.reduce((total, digit) => {
    return total * digit;
  }, 1);
  return totalProduct;
};

const power = function (num1, num2) {
  return num1 ** num2;
};

const factorial = function (arg) {
  let total = 1;
  if (arg === 0) return total;

  while (arg > 0) {
    total *= arg;
    arg--;
  };
  return total;
};

// Do not edit below this line
module.exports = {
  add,
  subtract,
  sum,
  multiply,
  power,
  factorial
};
