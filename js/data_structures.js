// Add two arrays
var colors = ['red', 'blue', 'green', 'yellow'];
var names = ['Ed', 'Jae', 'Ricky', 'Four'];

// Add code which adds a color and a name to the respective arrays
colors.push('Violet');
names.push('Seabiscuit');


// create data structure, add horses and their colors
var Horses = {};
for (var i = 0; i < colors.length; i++) {
    Horses[names[i]] = colors[i];
};
console.log(Horses);


