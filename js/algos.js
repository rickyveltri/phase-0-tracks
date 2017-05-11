///////////////  RELEASE 0  ///////////////

// Function: returns the longest string in an array
function findLongestString(stringArr) {
    var longestString = "";
    for (var i = 0; i < stringArr.length; i++) {
        if (stringArr[i].length > longestString.length) {
            longestString = stringArr[i];
        }
    }
    return longestString;
}


///////////////  RELEASE 1  ///////////////

// Function: determine if two object share the same key
function objKeyMatch(obj1, obj2) {
    matchingKeys = false;
    for (var k in obj1) {
        if (obj2[k] !== undefined) {
            matchingKeys = true;
        }
    }
    return matchingKeys;
}


///////////////  RELEASE 2  ///////////////
/*
Function:
 -- takes an integer for number of words length
 -- returns an array of strings of the given length
 -- words must have a random letter length, from 1-10
*/

function randomStringArr(numWords) {
    // set data structures
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    var randomArr = [];

    // create 'integer' number of words as an array
    for (var i = 0; i < numWords; i++) {

        // set random wordLength from 1 and 10 letters
        var wordLength = Math.floor(Math.random()*10)+1;

        // create an array to store randomized letters
        var letterArr = [];

        // For 'WordLength' times, generate a random letter and push it to letterArr
        for (var x = 0; x < wordLength; x++) {
            letterArr.push(letters[Math.floor(Math.random()*letters.length)]);
        }

        // join letterArr
        letterArr.join('');

        // join and push the resulting letterArr
        randomArr.push(letterArr.join(''));
    }
    return randomArr;
}


///////////////  DRIVER CODE  ///////////////


// Release 0 //
var strings = ['habitat', 'to', 'wood', 'strings', 'drums', 'guitar'];
var phrases = ['first phrase', 'looooo0ooong phrase', 'shrt phrse'];

console.log('\n');

console.log('RELEASE 0: FIND LONGEST STRING/PHRASE');
console.log("LONGEST STRING:")
console.log(strings);
console.log(findLongestString(strings));
console.log('LONGEST PHRASE:');
console.log(phrases);
console.log(findLongestString(phrases));

console.log('\n');

// Release 1 //
console.log('RELEASE 1: MATCHING KEYS');
console.log(objKeyMatch({type: "Acoustic", wood: "Mahogoney"}, {name: "Tamir", age: 54}));
        // returns false
console.log(objKeyMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
        // return true

console.log('\n');

// Release 2 //
console.log('RELEASE 2: RANDOM STRING ARRAY');
console.log('ARRAY OF 5 WORDS, EACH HAVING 1-10(RANDOM) LETTERS(RANDOM)');
console.log(randomStringArr(5));

console.log('\n');

//Assumption: the arrays to be generated are of length = 10
console.log("LONGEST OF RANDOM STRING x10");
console.log("NOTE: LENGTH OF EACH ARRAY = 5");
for (var i = 0; i < 10; i++) {
    console.log(findLongestString(randomStringArr(5)));
}