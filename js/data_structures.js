var color = ["blue", "green","brown","yellow"]
var name = ["Ed", "Bob", "Barry","Edith"]

color.push("red")
name.push("Benny")

var horse = {};
for (var i = 0; i < color.length; i++){
	horse[name[i]]= color[i]
}
console.log(horse)

function car_assembly(color, type, spare_needed){
  this.color = color;
  this.type = type;
  this.spare_needed = spare_needed
  this.ignition = function () {console.log("vroom vroom vroom")};
  console.log("generating a new "+color+ " " + type + " with "+ spare_needed + " spare parts")
}

var first_car = new car_assembly("blue", "sedan", 4);
console.log(first_car)
first_car.ignition()