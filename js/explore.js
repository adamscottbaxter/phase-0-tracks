// create a function which accepts a parameter
// create a variable inside the function which is an empty string
// for each character in the parameter, starting with the last,
//   loop through and place it into the new string.
// return the new string.

function reverseFunction(string) {
  for ( var i = string.length-1, new_string = ""; i >= 0; i--) {
    new_string = new_string + (string[i])
  }
  return new_string;
}

console.log(reverseFunction("Hello"))

var myVar = reverseFunction("abcdefg")

if ("bears"=="bears") {
  console.log(myVar)
}
