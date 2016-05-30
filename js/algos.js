// PSEUDOCODE RELEASE 0

// create a test_array of strings to test with
// create empty new_array
// put first array item in new_array
// iterate through test_array:
//   if the string's length is shorter than the first item, put it in 0 index, else at the end
//     actually this won't quite work for an array length > 3 unless i compare each item to each new_array item.

// another way:
//   create hash with test_array strings as keys and their length as values, then sort by values.
//   build hash by iterating through keys with for i..big_number if that value matches i put it in the new_array
//   possibly just store the largest value as an answer variable, and replacing it as needed, return answer variable.

// another way:
//   create new answer array = [""]
//   iterate through parameters and compare to index[0]
//   if length greater than index[0] put in front, else put behind

// PSEUDOCODE Release 1

// create function which accepts two arguments
// iterate through first argument keys to check if argument two has a match, 
//   if so then check to see if values are a match
//     if yes return true
//     else return false
//   if not return false

var test_array = ["cat", "c", "puppy", "dinosaur", "apple", "b", "s"];
function greatestLength(array_of_strings) {
  var answer_array = [""];
  for (var i in array_of_strings) {
    if (array_of_strings[i].length > answer_array[0].length) {
      answer_array.unshift(array_of_strings[i]);
    } else {
      answer_array.push(array_of_strings[i]);
    }
  }
  return answer_array[0]
}

function matchFinder(obj1, obj2) {
  for (var q in obj1) {
    if (obj2.hasOwnProperty(q)) {
      if (obj1[q] == obj2[q]) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}

console.log(matchFinder({name: "shirley", age: 100}, {name: "adam", age:200}))
console.log(matchFinder({name: "adam", age: 100}, {name: "adam", age:200}))
console.log(greatestLength(test_array));
console.log(greatestLength(["a", "bb", "ccc", "yy"]));
console.log(greatestLength(["long phrase", "longer phrase", "longest phrase"]));



// release 0: things that didn't work

// for (var i in test_array, big = "wwwww") {
//   // var big = i;
//   // console.log(big.length)
//     if (test_array[i].length < big.length) {
//       continue;
//     } else {
//       big = test_array[i];
//     }
//     console.log(big)
//   // console.log(test_array[i].length)
// }

// function buildObject(array) {
//   for (var i = 0; i < test_array.length; i++) {
//     new_object[test_array[i]] = test_array[i].length
//     };
//     return new_object;
//   }
// console.log(new_object);
// buildObject(test_array);
// // console.log(Object.keys(new_object).length);

// console.log(new_object.puppy);    
// for (var v in new_object) {
//   console.log(v + " = " + new_object[v]);

// }

// function longestString(array_of_strings) {
//   for ( var i = 200; i >= 0; i--) {
//     for (value in new_object.keys) {
//       console.log()
//     }
//   }
//   return new_string;
// }
