var colors = ["green", "blue", "black", "orange"];

var horse_names = ["Ed", "Seabiscuit", "Cigar", "American Pharoah"];

colors.push("purple");

horse_names.push("Horace");

console.log(colors, horse_names);

var horse = {};

for (var i = 0; i < colors.length; i++) {
    horse[horse_names[i]] = colors[i];
}

console.log(horse);


var car = {make: "Ferrari", year: 1998, isSweet: true};

function Car(make, year, isSweet) {
  // In this context, 'this' refers to 
  // the individual dog we're making
  console.log("Our new car:", this);
  
  // Therefore, this.name is sort of the Ruby
  // equivalent of @name
  this.make = make;
  this.year = year;
  this.isSweet = isSweet;
  
  // As for behavior, a function is a perfectly 
  // valid property value ... whoa!
  this.crash = function() {isSweet = false};
  
  console.log("CAR INITIALIZATION IS COMPLETE");
}

console.log("Let's build a new car....");
var anotherCar = new Car("BMW", 2016, true);
anotherCar.crash();
console.log(anotherCar);

console.log("Let's build yet another new car...")
var onemoreCar = new Car("Jeep", 2001, true);
console.log(onemoreCar);

console.log("One more car to build...")
var lastCar = new Car("Lada", 1955, false);
console.log(lastCar);


