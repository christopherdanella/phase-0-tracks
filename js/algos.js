// Release 0: Find the Longest Word
// Write a function that takes an array of words or phrases and returns
// the longest word in the array.


// PSEUDOCODE
  // write a function that takes an array of strings as a parameter
  // function should loop through each word and measure them individually
  // using .length
    // set i as the index equal to 0 and use a FOR loop to loop through the 
    // strings in the array
    // set new variable called longest to an empty string
    // use conditional IF statement to check if array words index is greater
    // than the length of variable longest
    // IF true then variable longest is equal to index of array words.
    // return variable longest
  

  function longest_word(words) {
    var longest = ""
    for (var i = 0; i < words.length; i++) {
      if (words[i].length > longest.length){
        longest = words[i];
      }
    }
    return longest;
  }

// Release 1: Find a Key-Value Match
// Write a function that takes two objects and checks to see if they
// share at least one key-value pair
// If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54} 
// the function would return true because at least one key-value pair matches between the two objects.
// If no pairs match (and keep in mind that the two objects may not even have any of the same keys) 
// the function should return false. To make your life easier, 
// don't worry about whether a property is a string ('age') or an identifier name (age). 
// Those can be considered equivalent.


// PSEUDOCODE
  // name function match_finder using objOne and objTwo as parameters
  // create a variable called "key" and loop through objOne
  // use hasOwnProperty function in javascript to loop through parameters
  // and figure out if there is a match in the keys.
  // use conditional IF statement to see if objOne and objTwo have keys
  // that are equal to each other
  // IF there is a match, print true
  // ELSE print false



function match_finder(objOne, objTwo) {
  for (var key in objOne) {
    if (objTwo.hasOwnProperty(key)) {
      if (objOne[key] === objTwo[key]) {
        var match = objOne[key];
      }
    }
  }

  if (match) {
    console.log("True, the match is " + match);
  } else { 
    console.log("False, there is no match.")
  }
}


// DRIVER CODE

console.log(longest_word(["Christopher", "Coeli", "Brendan"]))
console.log(longest_word(["Brooklyn", "Philadelphia", "Phoenix"]))
console.log(longest_word(["Bill Calderone", "John Smith", "Davey Jones", "Rocky Balboa"]))



match_finder({name: "Chris", age: 32}, {name: "James", age: 32})
match_finder({name: "Wyatt", hair: "brown"}, {name: "Joe", hair: "black"})




