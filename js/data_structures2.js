var colors = ["blue", "green", "red", "orange"]
var horseNames = ["Ed", "Captain", "Seabiscuit", "Cigar"]

colors.push("black");
horseNames.push("Epona");

console.log(colors);
console.log(horseNames);


var horses = {}

for (var i = 0; i < colors.length; i++) {
  horses[(horseNames[i])] = (colors[i]);
}
console.log(horses);