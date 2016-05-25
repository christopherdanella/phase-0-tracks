// var colors = ["blue", "green", "red", "orange"]
// var horseNames = ["Ed", "Captain", "Seabiscuit", "Cigar"]
// 
// colors.push("black");
// horseNames.push("Epona");
// 
// console.log(colors);
// console.log(horseNames);
// 
// 
// var horses = {}
// 
// for (var i = 0; i < colors.length; i++) {
//   horses[(horseNames[i])] = (colors[i]);
// }
// console.log(horses);



// CONSTRUCTOR FUNCTION

var car = {make: "Subaru", year: 2002, isFast: false};

function Car(make, year, isFast) {
  console.log("Our new car:", this);

  this.make = make;
  this.year = year;
  this.isFast = isFast;

  this.rev = function() { console.log("*VROOOOOM*!"); };

  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car...");

var anotherCar = new Car("BMW", 2016, true);
console.log(anotherCar);
console.log("Our car can rev it's engine:");
anotherCar.rev();
console.log("-------")

console.log("Let's build another car...")
var yetAnotherCar = new Car("Ferrari", 1988, true);
console.log(yetAnotherCar);
console.log("Our car can rev it's engine:");
yetAnotherCar.rev();
console.log("-------")

car.slamBrakes = function() { console.log("*SLAMS ON BRAKES*")};
car.slamBrakes();




