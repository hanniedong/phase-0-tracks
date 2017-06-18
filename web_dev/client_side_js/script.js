console.log("The script is running!");

function addBlueBorder(event) {
  event.target.style.border = "10px solid blue";
}

var photo = document.getElementById("dance_team");
photo.addEventListener("click", addBlueBorder);

var newPara = document.createElement('p');
var paraText= document.createTextNode("NBA CHAMPIONS!");
newPara.appendChild(paraText);
var headings = document.getElementsByTagName("h1");
var heading = headings[0];
heading.appendChild(newPara);


