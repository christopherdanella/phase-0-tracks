// Release 0: Find the Longest Word
// Write a function that takes an array of words or phrases and returns
// the longest word in the array.


// PSEUDOCODE
  // write a function that takes an array of strings as a parameter
  // function should loop through each word and measure them individually
  // using .length
    // set i as the index equal to the length of the array
    // use FOR to loop through each string in the array
  // use conditional statements to measure each array against the others
  //  IF array[0].length > array[1].length && array[2].length
      // print first string in the array to the console
  
  var string = ["Christopher", "Coeli", "Brendan"]
  for (var i = 0; i < string.length; i++) {
    console.log(string[i]);
  }

  function longest_word(string) {
    var longest = "";
    if (string[0].length > (string[1].length && string[2].length)) {
     console.log(longest = string[0]);
   }
   else if (string[1].length > (string[0].length && string[2].length)) {
     console.log(longest = string[1]);
   }
   else if (string[2].length > (string[0].length && string[1].length)) {
     console.log(longest = string[2]);
   }
  }

console.log(longest_word(string));

var string = ["Philadelphia", "New York City", "Boston"]

console.log(longest_word(string));

var string = ["Lily", "Rescue Dog", "Bushwick is a borough in Brooklyn"]

console.log(longest_word(string));


