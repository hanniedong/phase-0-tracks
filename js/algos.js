//RELEASE 0
//Write function that takes an array of words or phrases and returns the longest phrase
//INPUT: Array of strings
//STEPS: find length of each string by looping through words in array and return the longest one
//OUTPUT: Longest string

words = ["banana","apple","fig"]
function findLongestWord(words){
  var longestWord = 0;
	for (var i = 0; i < words.length; i++){
	if(words[i].length >longestWord){
	    longestWord = words[i].length;
	 }
	}
	return longestWord;
}
findLongestWord(words)