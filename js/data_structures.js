var color = ["blue", "green","brown","yellow"]
var name = ["Ed", "Bob", "Barry","Edith"]

color.push("red")
name.push("Benny")

var horse = {};
for (var i = 0; i < color.length; i++){
	horse[name[i]]= color[i]
}
}