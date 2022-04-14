const removeFromArray = function (arr, ...values) {
    let newArr = [...arr];

    for (item of arr) {
        for (value of values) {
            if (value === item) {
                newArr.splice(newArr.indexOf(item), 1);
            };
        };
    };
    return newArr;
};

// Do not edit below this line
module.exports = removeFromArray;
