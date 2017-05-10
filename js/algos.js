///////////////  RELEASE 0  ///////////////

// Function: returns the longest string in an array
function findLongestString(stringArr) {
    var longestString = "";
    for (var i = 0; i < stringArr.length; i++) {
        if (stringArr[i].length > longestString.length) {
            longestString = stringArr[i];
        }
    }
    return longestString
}

var strings = ['habitat', 'to', 'wood', 'strings', 'drums', 'guitar'];
var phrases = ['first phrase', 'looooo0ooong phrase', 'shrt phrse'];

// Driver Code Test
console.log(findLongestString(strings));
console.log(findLongestString(phrases));





///////////////  RELEASE 1  ///////////////

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
