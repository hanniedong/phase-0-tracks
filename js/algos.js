//RELEASE 0
//Write function that takes an array of words or phrases and returns the longest phrase
//INPUT: Array of strings
//STEPS: find length of each string by looping through words in array and return the longest one
//OUTPUT: Longest string

function findLongestWord(words){
  var longestWord = 0;
	for (var i = 0; i < words.length; i++){
	if(words[i].length >longestWord){
	    longestWord = words[i].length;
	 }
	}
	return longestWord;
}


//RELEASE 1
//Write function that takes two objects and checks to see if the objects share at least one key-value pair. 
//INPUT: Two objects 
//STEPS: Compare the key-values between the objects
		// IF there is a match, return true
		// IF there is no match, return false
//OUTPUT: true vs. false

function matchItems(object1, object2) {
   for (var key in object1) {
     for (var anotherKey in object2) {
       if (key === anotherKey) {
         if (object1[key] === object2[anotherKey]) {
           return true;
         } 
       }
     }
   }
   return false;
 }

//RELEASE 2
//Write a function that takes an integer for length, and builds and returns an array of strings of the given length. 
//The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.
//INPUT: Integer
//STEPS: Build an array based on the integer number
//OUTPUT: array with x amount of words with a min of 1 letter and a max of 10 letter
 



 
 //DRIVER
 //RELEASE 0
 words = ["banana","apple","fig"];
 console.log(findLongestWord(words));
 //RELEASE 1
 var person1 = {name: "Bobby", age: 13};
 var person2 = {name: "Jimmy", age: 13};
 console.log(matchItems(person1, person2));