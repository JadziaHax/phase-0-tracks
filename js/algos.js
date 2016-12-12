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

longestString(["long phrase","longest phrase","longer phrase"]);
longestString(["left","right","forward","backward"]);
longestString(["cat","goose","elephant"]);