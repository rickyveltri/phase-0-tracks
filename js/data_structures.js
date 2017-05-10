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


// create a car using a constuctor function with a few different properties
// include one function

function Car(color, year, automatic) {
    this.color = color;
    this.year = year;
    this.automatic = automatic;

    this.startEngine = function startEngine() {
        console.log("Vroom vroom")
    }
}


// create a few cars and test their startEngine function
var mustang = new Car('red', 2015, false);
var corolla = new Car('Black', 2010, true);
var yukon = new Car('Silver', 2000, true);

console.log(mustang);
mustang.startEngine();

console.log(mustang);
corolla.startEngine();

console.log(mustang);
yukon.startEngine();



// loop through the keys and values of objects
for (var k in mustang) {
  console.log(k + ": " + mustang[k]);
};

for (var k in corolla) {
  console.log(k + ": " + corolla[k]);
};

for (var k in yukon) {
  console.log(k + ": " + yukon[k]);
};