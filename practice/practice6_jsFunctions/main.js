const numbers = [5, 6, 10, 34, 79, 2, 1];
console.log(`These are the oringinal numbers: ${numbers}`);

// Make a function that sorts numbers from large to small
function sorted() {
  const order = numbers.sort(function(a, b) {
    return b - a
  });
  console.log(`These are the sorted numbers: ${order}`);
}

//Make a function that adds the numbers together
function sum() {
  const total = numbers.reduce(function(a, b) {
    return a + b
  }, 0);
  console.log(`This is the total of the numbers: ${total}`);
}

//Make a function that returns the even numbers (I also did odd)
function even() {
  const evens = [];
  const odds = [];
  numbers.forEach((item) => {
    if (item % 2 == 0) {
      evens.push(item);
    } else {
      odds.push(item);
    }
  });
  console.log(`These are the even numbers: ${evens}`);
  console.log(`These are the odd numbers: ${odds}`);
}

//Calling the functions
sorted();
sum();
even();
