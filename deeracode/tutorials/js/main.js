/*const name = 'John';
const age = 30;
const isCool = true;
const rating = 4.5;
const x = null;
const y = undefined; /!* or just initialize like let z; *!/


console.log(typeof name);
console.log(typeof age);
console.log(typeof isCool);
console.log(typeof rating);
console.log(typeof x);  /!* This produces an "error" *!/
console.log(typeof y);

//Concatenation
console.log('My name is ' + name + ' and I am ' + age); /!*Older way of doing this*!/
// Template string
console.log(`My name is ${name} and I am ${age}`);

const s = 'Hello, World!';
console.log(s.length);
console.log(s.toUpperCase());
console.log(s.substr(0, 5).toUpperCase());
// Split to an array
console.log(s.split(','));

const numbers = new Array(1,2,3,4,5); /!*Not used as ofter*!/
console.log(numbers);
const fruits = ['apples', 'oranges', 'pears'];
console.log(fruits);
console.log(fruits[1]);
fruits[3] = 'grapes';
console.log(fruits);
fruits.push('kiwi'); /!* opposite is pop*!/
fruits.unshift('melon'); /!* opposite is shift*!/
console.log(Array.isArray(fruits));
console.log(fruits.indexOf('kiwi'));

// Object literals
const person = {
    firstName: 'John',
    lastName: 'Doe',
    number: 30,
    hobbies: ['music', 'movies', 'sports'],
    address: {
        street: '50 Main St',
        city: 'Boston',
        state: 'MA'
    }
}

console.log(person);
console.log(person.firstName, person.number);
console.log(person.hobbies[1]);
console.log(person.address.city);


//Check destructuring because this doesn't make sense.
/!*const {
    firstName, lastName
} = person;
console.log(firstName);*!/

person.email = 'john@gmail.com';
console.log(person);

// Arrarys
const todos = [
    {
        id: 1,
        text: 'Take out the trash',
        isCompleted: true
    },
    {
        id: 2,
        text: 'Meeting with boss',
        isCompleted: true
    },
    {
        id: 3,
        text: 'Dentist appt',
        isCompleted: false
    }
];

console.log(todos);
console.log(todos[1].text);

// JSON

const todoJSON = JSON.stringify(todos);
console.log(todoJSON);

// For loop
for(let i = 0; i < 10; i++) {
    console.log(i);
}

// While loop
let i = 0;
while (i < 10) {
    console.log(i);
    i++;
}

//Loop through array
for(let i = 0; i < todos.length; i++) {
    console.log(todos[i].text);
}
// Better to use below
for(let todo of todos) {
    console.log(todo.text);
}

//Best to use forEach, map, filter
todos.forEach(function(todo) {
    console.log(todo.text);
});

const todoText = todos.map(function(todo) {
    return todo.text;
});
console.log(todoText);

const todoCompleted = todos.filter(function(todo) {
    return todo.isCompleted === true;
});
console.log(todoCompleted);

const todoCompletedMap = todos.filter(function(todo) {
    return todo.isCompleted === true;
}).map(function(todo) {
    return todo.text;
})
console.log(todoCompletedMap);*/


//Conditionals
// || is OR, && is and
/*const x = 0;


if (x == 10) {
    console.log('x is 10');
} else if (x > 10) {
    console.log('x is greater than 10');
} else {
    console.log('x is less than 10');
}*/

//Ternary operator
/*
const y = 11;
const color = y > 10 ? 'red' : 'blue';
console.log(color);
*/

// Switches
/*const y = 11;
const color = y > 10 ? 'red' : 'blue';

switch (color) {
    case 'red':
        console.log('color is red');
        break;
    case 'blue':
        console.log('color is blue');
        break;
    default:
        console.log('color is not red or blue');
        break;
}*/

/*function addNums(num1 = 3, num2 = 3) {
    return(num1 + num2);
}
console.log(addNums(1, 3));*/
// Turn above into arrow function

/*const addNums = (num1 = 1, num2 = 1) => {
    return num1 + num2;
}
console.log(addNums(5, 5));*/

// Or shorter
/*
const addNums = (num1 = 1, num2 = 1) => console.log(num1 + num2);
addNums(5, 5);*/

// Or even shorter
/*const addNums = (num1 = 1, num2 = 1) => num1 + num2;
console.log(addNums(5, 5));*/

//OOP - constructor function
/*function Person(firstName, lastName, dob) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.dob = new Date(dob);
    this.getFullName = function () {
        return `${this.firstName} ${this.lastName}`
    }
}
//Prototype
Person.prototype.getBirthYear = function () {
    return this.dob.getFullYear();
}
//Instantiate
const person1 = new Person('John', 'doe', '4-3-80');
console.log(person1.getBirthYear());
console.log(person1.getFullName());*/

//Classes
/*
class Person {
    constructor(firstName, lastName, dob) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = new Date(dob);
    }

    getBirthYear() {
        return this.dob.getFullYear();
    }

    getFullName() {
        return `${this.firstName} ${this.lastName}`
    }
}
const person1 = new Person('John', 'doe', '4-3-80');
console.log(person1.getBirthYear());
console.log(person1.getFullName());*/

//DOM
//Single element
/*
console.log(document.getElementById('my-form'));
console.log(document.querySelector('.container'));

//Multiple element
console.log(document.querySelectorAll('.item'));

//below are older and not as good
console.log(document.getElementsByClassName('item'));
console.log(document.getElementsByTagName('li'));

const items = document.querySelectorAll('.item');
items.forEach((item) => console.log(item));
*/

/*
const ul = document.querySelector('.items');
// ul.remove();
// ul.lastElementChild.remove();
ul.firstElementChild.textContent = 'Hello';
ul.children[1].innerText = 'Brad';
ul.lastElementChild.innerHTML = '<h1>Hello</h1>';

const btn = document.querySelector('.btn');
btn.style.background = 'red';*/

/*const btn = document.querySelector('.btn');
btn.addEventListener('click', (e) => {
    //can also use mouseover mouseout etc
    e.preventDefault();
    // console.log('click');
    // console.log(e.target.className);
    document.querySelector('#my-form').style.background = '#ccc';
    document.querySelector('body').classList.add('bg-dark');
});*/

const myForm = document.querySelector('#my-form');
const nameInput = document.querySelector('#name');
const emailInput = document.querySelector('#email');
const msg = document.querySelector('.msg');
const userList = document.querySelector('#users');

myForm.addEventListener('submit', onSubmit);
function onSubmit(e) {
    e.preventDefault();
    // console.log(nameInput.value);
    if (nameInput.value === '' || emailInput.value === '') {
        // alert('Please enter fields'); ---This is ugly
        msg.classList.add('error');
        msg.innerHTML = 'Please enter all fields.';

        setTimeout(() => msg.remove(), 3000);
    } else {
        const li = document.createElement('li');
        li.appendChild(document.createTextNode(`${nameInput.value} : ${emailInput.value}`));
        userList.appendChild(li);
        nameInput.value = '';
        emailInput.value = '';
    }
}