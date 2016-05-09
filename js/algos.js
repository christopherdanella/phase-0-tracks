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
  

  function longestWord(words) {
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



function matchFinder(objOne, objTwo) {
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


// Release 2: Generate Random Test Data
// write a function that takes an integer for length and builds
// and returns an array of strings of the given length. so if we ran
// your function with an argument of 3, we would get an array of 3
// random words back. The words should be of randomly varying length,
// with a minimum of 1 letter and a max of 10 letters.
// Add driver code that does the following 10 times:
  // Generates an array, prints the array, feeds the array to your
  // "longest word" function, and prints the result.

// PSEUDOCODE
  // write function randomData and give it a number as a parameter.
  // add two more variables, randomArray as an empty array
  // randomLetters will be an array of all of the letters of the alphabet
  // loop through the parameter of the function 
  // set new variable called randomNumber and use Math.random to generate a random number
  // use Math.round to make sure that the number is rounded down from a float to a whole number.
  // declare another variable and set it equal to an empty string.
  // loop through the randomNumber variable, set the index equal to something other than "i"
  // push the empty string variable to our randomArray and return randomArray
  // print it to the console so the user sees the 10 arrays that have been generated.


function randomData(number) {
  var randomArray = [];
  var randomLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q",
  "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  for (var i = 0; i < number; i++) {
    var randomNumber = Math.round(Math.random() * 10) + 1;
    var word = "";
    for (var j = 0; j < randomNumber; j++) {
      word = word + randomLetters[j]
    }
    randomArray.push(word)
  }
  console.log(randomArray)
  return randomArray
}


// DRIVER CODE

// console.log(longest_word(["Christopher", "Coeli", "Brendan"]))
// console.log(longest_word(["Brooklyn", "Philadelphia", "Phoenix"]))
// console.log(longest_word(["Bill Calderone", "John Smith", "Davey Jones", "Rocky Balboa"]))
// 
// 
// 
// match_finder({name: "Chris", age: 32}, {name: "James", age: 32})
// match_finder({name: "Wyatt", hair: "brown"}, {name: "Joe", hair: "black"})


console.log(longestWord(randomData(10)))




