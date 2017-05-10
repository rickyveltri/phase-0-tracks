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





///////////////  DRIVER CODE  ///////////////


// Release 0 //
var strings = ['habitat', 'to', 'wood', 'strings', 'drums', 'guitar'];
var phrases = ['first phrase', 'looooo0ooong phrase', 'shrt phrse'];
console.log(findLongestString(strings));
console.log(findLongestString(phrases));


// Release 1 //
console.log(objKeyMatch({type: "Acoustic", wood: "Mahogoney"}, {name: "Tamir", age: 54}));
        // returns false
console.log(objKeyMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
        // return true







// Class constructor
function Guitar(type, wood, strings) {
    this.type = type;
    this.wood = wood;
    this.strings = strings;

    this.play = function play() {
    return '*guitar strumming*'
    }
};

// Class definitions
martin = new Guitar('acoustic', 'mahogoney', 'steel');
lesPaul = new Guitar('electric', 'cherry sunburst', 'steel');