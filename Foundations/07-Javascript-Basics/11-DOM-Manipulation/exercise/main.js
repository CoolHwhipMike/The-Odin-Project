// Select #container
const container = document.querySelector('#container');

// create a paragraph with red text that says "Hey I'm red!"
const redPara = document.createElement('p');
redPara.textContent = "Hey I'm red!";
redPara.style.color = "red";
container.appendChild(redPara);

//  create a blue h3 with the text "I'm a blue h3!"
const blueH3 = document.createElement("h3");
blueH3.textContent = "I'm a blue h3!";
blueH3.setAttribute("style", "color: blue;");
container.appendChild(blueH3);

// div that is pink with a black border and contains
// an h1 that says "I'm in a div"
// a p that says "ME TOO!"
const h1 = document.createElement("h1");
h1.textContent = "I'm in a div";

const para = document.createElement("p");
para.textContent = "ME TOO!";

const pinkDiv = document.createElement("div");
pinkDiv.setAttribute("style", "background-color: pink; border: solid black");
pinkDiv.appendChild(h1);
pinkDiv.appendChild(para);
container.appendChild(pinkDiv);

// events
const btn = document.querySelector('#btn');
btn.onclick = () => alert('Hello World');

const btn1 = document.querySelector('#btn1');
btn1.addEventListener('click', () => {
    alert('Hello World');
});

const btn2 = document.querySelector('#btn2');
btn2.addEventListener('click', function (e) {
    // console.log(e.target);
    e.target.style.background = 'blue';
});