//------------------------------//
// Variables and initialization //
//------------------------------//

// Getting stuff from the DOM
const container = document.querySelector(".container");
const reset = document.querySelector(".reset");
const change = document.querySelector(".change");

// Making the initial grid
createGrid();
allowColoring();

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
// This seems like a bad way to do this, 
// I need to revisit this to see why I had to set
// this up this way.

// Fill the grid on mouse over
function allowColoring() {
    const coloredDiv = document.querySelectorAll(".gridUnit");
    coloredDiv.forEach(unit => unit.addEventListener("mouseover", fillIn));
}

// A function to fill the grid units
function fillIn() {
    this.setAttribute("style", "background-color: black;");
}

//-----------------//
// Event Listeners //
//-----------------//

// Reset to the default grid
reset.addEventListener("click", () => {
    resetGrid();
    createGrid();
    allowColoring();
});

// Change the size of the grid
change.addEventListener("click", () => {
    let gridRows = prompt("enter rows");
    let gridColumns = prompt("enter columns");

    resetGrid();
    createGrid(gridRows, gridColumns);
    allowColoring()
});