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

