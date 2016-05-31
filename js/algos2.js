// Release 0: Find the Longest Word

// PSEUDOCODE
  // write a function that takes a string(s) as a parameter
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

// PSEUDOCODE
  // name function match_finder using objectOne and objectTwo as parameters
  // create a variable called "key" and loop through objectOne
  // use hasOwnProperty function in javascript to loop through parameters
  // and figure out if there is a match in the keys.
  // use conditional IF statement to see if objectOne and objectTwo have keys
  // that are equal to each other
  // IF there is a match, print true
  // ELSE print false



function matchFinder(objectOne, objectTwo) {
  for (var key in objectOne) {
    if (objectTwo.hasOwnProperty(key)) {
      if (objectOne[key] === objectTwo[key]) {
        var match = objectOne[key];
      }
    }
  }

  if (match) {
    console.log("True " + match);
  } else { 
    console.log("False, no matches found.")
  }
}

// Release 2: Generate Random Test Data

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

// console.log(longest_word(["Lily", "Harpua", "Batman"]))
// console.log(longest_word(["Bushwick", "Philadelphia", "Boston"]))
// console.log(longest_word(["Odessa Mama", "LeBron James", "Christopher Danella", "James Bond"]))
// 
// 
// 
// match_finder({name: "Chris", age: 27}, {name: "Bud", age: 27})
// match_finder({name: "Dom", hair: "blond"}, {name: "Andy", hair: "red"})


console.log(longestWord(randomData(10)))




