// const findTheOldest = function (people) {
//     const oldest = people.sort((a, b) => {
//         const lastPerson = a.yearOfDeath - a.yearOfBirth;
//         const nextPerson = b.yearOfDeath - b.yearOfBirth;
//         let oldestPerson = (lastPerson > nextPerson) ? a : b;
//         // console.log(lastPerson);
//         // console.log(nextPerson);
//         // console.log(oldestPerson.name);
//         return oldestPerson.name;
//     });
// };

const findTheOldest = function (array) {
    return array.reduce((oldest, currentPerson) => {
        const oldestAge = getAge(oldest.yearOfBirth, oldest.yearOfDeath);
        const currentAge = getAge(currentPerson.yearOfBirth, currentPerson.yearOfDeath);
        return oldestAge < currentAge ? currentPerson : oldest;
    });
};

const getAge = function (brith, death) {
    if (!death) {
        death = new Date().getFullYear();
    }
    return death - brith;
};

// Do not edit below this line
module.exports = findTheOldest;
