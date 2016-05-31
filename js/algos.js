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

// PSEUDOCODE Release 2

// within the function which selects how many words to use:
// create empty answer_array = []
// create preliminary list of 'random' words which are 10 letters long
//   as many times as needed:
//     select from preliminary word bank at random
//     for each word:
//       create a way to roll a random 1-10 and keep that many letters from the word, deleting the rest
//    store result in answer_array
//       pass answer_array to greatestLength

function getRandomIntInclusive(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function randomWord(int) {
 var wordBank = ["quizmaster", "intermezzo", "oxygenized", "equalizing", "zombifying", "mozzarella", "razzmatazz", "bumfuzzled"];
 var answer = [];
 for (var i = 0; i < int; i++) {
  var temp = wordBank[getRandomIntInclusive(0, wordBank.length-1)];
  var singles = temp.split("");
  shortWord=  singles.splice(0, getRandomIntInclusive(1, 10)).join('');
  answer.push(shortWord); 
 }
 return answer;
}



var test_array = ["cat", "c", "puppy", "dinosaur", "apple", "b", "z"];
function greatestLength(array_of_strings) {
  var answer_array = [""];
  for (var i in array_of_strings) {
    if (array_of_strings[i].length > answer_array[0].length) {
      answer_array.unshift(array_of_strings[i]);
    } else {
      answer_array.push(array_of_strings[i]);
    }
  }
  return answer_array[0];
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

console.log("----------Release 0--------");

console.log(greatestLength(test_array));
console.log(greatestLength(["a", "bb", "ccc", "yy"]));
console.log(greatestLength(["long phrase", "longer phrase", "longest phrase"]));

console.log("----------Release 1--------");

console.log(matchFinder({shape: "triangle", color: "green"}, {name: "adam", age:200}));
console.log(matchFinder({name: "shirley", age: 100}, {name: "adam", age:200}));
console.log(matchFinder({name: "adam", age: 100}, {name: "adam", age:200}));

console.log("----------Release 2-alpha--");

console.log(randomWord(3));

console.log("---------------------------");

console.log(randomWord(10));

console.log("----------Release 2-beta---");

console.log(greatestLength(randomWord(10)));

console.log("---------------------------");

console.log(greatestLength(randomWord(4)));

console.log("---------------------------");

console.log(greatestLength(randomWord(10)));

console.log("----------Release 2--------");

for ( var i = 0, roll = ""; i < 10; i++) {
 console.log("Generating random number 1-12...");
 roll = getRandomIntInclusive(1, 12);
 console.log("Number was " + roll + ". Creating array with length " + roll + ".");
 console.log(randomWord(roll));
}


// release 0: things that didn't work

// for (var i in test_array, big = "") {
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

