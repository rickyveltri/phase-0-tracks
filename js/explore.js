/* Write a function which reverses a string
- create a variable to hold the reversed word
- initiate a for loop
-- identify the length of the original string
-- start from the end, adding the letter to the reversed word variable through each iteration
-- end the loop after adding index 0
*/


// Create a function which reverses a string
function reverse(string) {
    var revWord = ""
    for (var i = string.length - 1; i > -1; i--) {
        revWord += string[i];
    }
    console.log(revWord)
};


// Driver code
ruby = "ruby"
if (true ==! false) {
    return ruby = reverse("javascript"); // ==> "tpircsavaj"
};

