// function: reverse string "hello"
  // function takes a string as a parameter, in this case "hello"
  // loop through the string from the last letter to the first
  // create a new variable and set it equal to an empty string
  // add each letter from the original string to the new variable
  // return variable


function reverse(string) {
  var newStr = "";
    for (var i = string.length -1; i >= 0; i--) {
      newStr += string[i]; }
      return newStr;
}


// DRIVER CODE

var condintionalString = "conditional string"
if (5 < condintionalString.length) { 
 console.log(reverse("hello")); }
else { console.log(condintionalString);
}
