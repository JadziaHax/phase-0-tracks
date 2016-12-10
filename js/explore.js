// Set a counter to equal to the character-length of the string passed to the function and loop until the counter equals zero.
// During the loop:
//    Read the character of the given string at the index position of the counter.
//    Add that chracter to an empty string variable.
// Return the value of the new string variable.

function reverse(str) {
  var reversed = "";
  for (var i = str.length-1; i >= 0; i-=1) {
  reversed += str[i];
  }
  return reversed;
}

var reversed_string = reverse("hello");
if (1 == 1){
  console.log(reversed_string);
}