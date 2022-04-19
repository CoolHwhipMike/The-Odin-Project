//------------------------------//
// Variables and initialization //
//------------------------------//

// Getting stuff from the DOM
const container = document.querySelector(".container");
const reset = document.querySelector(".reset");
const change = document.querySelector(".change");

// Making the initial grid
createGrid();

//-----------//
// Functions //
//-----------//

// A function to create the grid
function createGrid(gridRows = 16, gridColumns = 16) {
    let unitHeight = 700 / gridRows;
    let unitWidth = 700 / gridColumns;

    container.setAttribute("style", `grid-template-columns: repeat(${gridColumns}, auto);`);

    for (let rows = 0; rows < gridRows; rows++) {
        for (let columns = 0; columns < gridColumns; columns++) {
            const gridUnit = document.createElement("div");
            gridUnit.className = "gridUnit"
            gridUnit.setAttribute("style", `height: ${unitHeight}px; width: ${unitWidth}px`);
            container.appendChild(gridUnit);
        };
    };
}

// A function to reset the grid
function resetGrid() {
    while (container.hasChildNodes()) {
        container.removeChild(container.firstChild);
    };
}

//-----------------//
// Event Listeners //
//-----------------//

// Reset to the default grid
reset.addEventListener("click", () => {
    resetGrid();
    createGrid();
});

// Change the size of the grid
change.addEventListener("click", () => {
    let gridRows = prompt("enter rows");
    let gridColumns = prompt("enter columns");

    resetGrid();
    createGrid(gridRows, gridColumns);
});

let coloredDiv = document.getElementsByClassName("gridUnit");

function test() {
    for (node of coloredDiv) {
        node.addEventListener("click", () => {
            // node.setAttribute("style", "background-color: black;");
            console.log(node);
        });
    };
}
test();



// this.addEventListener("click", () => {
//     console.log(this);
// })