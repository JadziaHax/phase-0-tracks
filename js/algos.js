//Relase 0
//Set a "current high" variable equal to 0
//Define a function that takes an array of strings as a parameter and in that function:
//  Start a loop that iterates through the array.
//    For each string in the array evaluate the length.
//    if the length is greater than the value of "current high"
//      store the length in the variable "current high"
//      store the index position of the string in a variable called "winner"
//  end the loop
//  print the string in the index position of the value of "winner" from array.

function longestString(array) {
  var current_high = 0;
  var winner = 0;
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > current_high) {
      current_high = array[i].length;
      winner = i;
    }
  }
  return array[winner];
}

//Release 1
//Define a function that takes two objects as parameter and in that function:
//  define variable match with the value false.
//  Start a loop that iterates through the first object.
//    For each key in the first object, start a loop that iterates through the second object.
//      For each key in the second object, compare it to the key of the current iteration of the first object.
//      If the keys match
//        Compare their values
//        If the values match
//          set match to true
//      end the loop
//  end the loop
//  return variable match

function obj_compare(obj1, obj2) {
  var match = false;
  for (var key_1 in obj1) {
    for (var key_2 in obj2) {
      if (key_2 == key_1) {
        if (obj1[key_1] == obj2[key_2]) {
          match = true;
        }
      }
    }
  }
  return match;
}

//Release 0 driver code
console.log(longestString(["long phrase","longest phrase","longer phrase"]));
console.log(longestString(["left","right","forward","backward"]));
console.log(longestString(["cat","goose","elephant"]));

//Release 1 driver code
var dogs_1 = {bill: "grey", jill: "brown"};
var dogs_2 = {jake: "yellow", bill: "grey"};
var dogs_3 = {lula: "green", jake: "yellow"};

console.log(obj_compare(dogs_1, dogs_2));
console.log(obj_compare(dogs_1, dogs_3));
console.log(obj_compare(dogs_2, dogs_3));