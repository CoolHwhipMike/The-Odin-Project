const reverseString = function (text) {
    let newText = "";
    // let text = "hello";

    for (let i = 1; i <= text.length; i++) {
        newText += text[text.length - i];
    }
    return newText;
};

// Do not edit below this line
module.exports = reverseString;
