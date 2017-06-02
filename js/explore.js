//FUNCTION
//input: string
//steps: reverse string
	//starting from the last position of the string, go through each letter one by one until the last letter is reached
	//store letters into a new empty variable
	//call function and store result of function into new variable 
//output: reversed stringfunction reverse(string){
	
function reverse(string){
	var reversedWord = ""
	for (var i = string.length - 1; i >= 0; i --){
	reversedWord += string[i]
  }
  return reversedWord
}
var reversedInput = reverse("yellow")
console.log(reversedInput)



