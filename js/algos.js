//Relase 0
//Set a "current high" variable equal to 0
//Define a function that takes an array of strings as a parameter and in that function:
//  Start a loop that iterates through the array.
//    For each string in the array evaluate the length.
//    if the length is greater than the value of "current high"
//      store the length in the variable "current high"
//      store the index position of the string in a variable called "winner"
//  end the loop
//  return the string in the index position of the value of "winner" from array.

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

//Release 2
//Define a function that takes an integer as a parameter and in that funciton:
//  Define a variable array that is an empty array.
//  Define a variable alphabet with the value "abcdefghijklmnopqrstuvwxyz".
//  Define a variable randomNumber that holds a function that takes two integers as parameters and in that function (I did find this function for returning random *integers* through googling, but I understand the steps of it as follows):
//    Add 1 to the first integer passed as a parameter.
//    Subtract the sum from the previous step from the secont iteger passed as a parameter.
//    Multiply the difference from the previous step by a random number between 0 and 1.
//    Find the smallest integer greater than or equal to the product of the previous step.
//    Add one to the integer found in the previous step.
//    Return the sum from the previous step.
//  Start a loop that will loop a number of times equal to the integer passed to the function
//    Define a variable word with a value of "".
//    Start a loop that will loop a number of times equal to an integer returned by randomNumber with 1 and 10 as the parameters passed to it.
//      Give word the value of itself plus the character at the index position of the integer returned by randomNumber with 0 and 25 from alphabet.
//    End the loop.
//    Add word to array.
//  End the loop.
//  Return array.

function randWordArray(array_length){
  var array = [];
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var randomNumber = function(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  };
  for (var i = 0; i < array_length; i++) {
    var word = "";
    for (var j = 0; j < randomNumber(1,10); j++) {
      word = word + alphabet[randomNumber(0,25)];
    }
    array.push(word);
  }
  return array;
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

//Release 2 driver code
function randomNumber(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
    }

for (var i = 0; i < 10; i++) {
  var newArray = randWordArray(randomNumber(4,12));
  console.log(newArray);
  var longest = longestString(newArray);
  console.log(longest);
}
