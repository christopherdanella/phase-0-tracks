// Function that takes a string as a parameter and reverses it
// function("hello") as an example
// string "hello" should become "olleh" when printed to the console
// declare a variable that is equal to an empty string
// use a for loop and set a variable "i" equal to the length of the string -1
// while variable "i" is greater than or equal to 0, subtract "i"
// add variable "str" to the function's parameter and return the variable "str"



function reverse(string) {
  var str = "";
  for (var i = string.length -1; i >= 0; i--)
    str += string[i];
  return str;
}

var isHuman = true
if (isHuman) {
  console.log(reverse("chris"));
}
