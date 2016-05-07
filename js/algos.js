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
    // IF true then varable longest is equal to index of array words.
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

console.log(longest_word(["Christopher", "Coeli", "Brendan"]))
console.log(longest_word(["Brooklyn", "Philadelphia", "Phoenix"]))
console.log(longest_word(["Bill Calderone", "John Smith", "Davey Jones", "Rocky Balboa"]))





