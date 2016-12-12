
var colours = ["cerelean", "lavender", "vivid_orange", "gay_bright_purple"];
var horse_names = ["Penny", "Bo_Jack", "Secretariat", "Sleepy"];

colours.push("neon_yellow");
horse_names.push("Gertrude");

console.log(colours);
console.log(horse_names);


var horses_and_colours = {};

for (var i = 0; i < colours.length; i++) {
  horses_and_colours[horse_names[i]] = colours[i];
  }

console.log(horses_and_colours)




function Car(year, make, model) {

  this.year = year;
  this.make = make;
  this.model = model;

  this.go = function() { console.log("Vroom!"); };
}

var newCar = new Car("1999","Honda","Accord");
console.log(newCar);
newCar.go();

var anotherNewCar = new Car("2225","Google","Driverless Prototype 25");
console.log(anotherNewCar);
anotherNewCar.go();

var yetAnotherNewCar = new Car("1979","Delorian","Back_to_the_Future_Model");
console.log(yetAnotherNewCar);
yetAnotherNewCar.go();

//console.log(newCar[1]);  Doesn't work



// Iteration over Key Value of the object Dog

var dog = {
  ralph: 'green',
  nancy: 'yellow',
  taylor: 'purple',
};

for (var name in dog) {
  if (dog.hasOwnProperty(name)) {
    console.log('this is dog (' + name + ') for sure. Value: ' + dog[name]);
  }
  else {
    console.log(name);
  }
}