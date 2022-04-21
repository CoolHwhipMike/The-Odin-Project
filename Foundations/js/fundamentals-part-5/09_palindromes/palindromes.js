const palindromes = function (str) {
    const punctuation = /[ !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~]/g;
    const forward = str.toLowerCase().replace(punctuation, '');
    const reverse = forward.split("").reverse().join("");
    return (forward === reverse) ? true : false;
};

// Do not edit below this line
module.exports = palindromes;
