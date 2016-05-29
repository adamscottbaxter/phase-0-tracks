// PSEUDOCODE

// create a test_array of strings to test with
// create empty new_array
// put first array item in new_array
// iterate through test_array:
//   if the string's length is shorter than the first item, put it in 0 index, else at the end
//     actually this won't quite work for an array length > 3 unless i compare each item to eacn new_array item.

// another way:
//   create hash with test_array strings as keys and their length as values, then sort by values.
//   build hash by iterating through keys with for i..big_number if that value matches I put it in the new_array
