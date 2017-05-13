=begin
Create method encrypt with argument string
Set index to 0 
Create placeholder variable with ""
Loop through each letter of the word until the last letter
Use the .next method to advance every letter of a string one letter forward
Have each letter add to the placeholder variable
Print the final result
=end
def encrypt(string)
index = 0
empty_string = ""
	while index < string.length
		empty_string = empty_string + string[index].next
		index +=1
	end
p empty_string
end

encrypt("abc")

=begin
Create method encrypt with argument string
Set index to 0 
Create placeholder variable with ""
Create variable containing "abcdefghijklmnopqrstuvwxyz"
Loop through each letter of the word until the last letter is reached
Create a new string that contains the letter corresponding to the original string
Find the index of that new string letter in the "abcdefghijklmnopqrstuvwxyz" string and subtract by 1
Add each letter to the placeholder variable
Print the final result
=end

def decrypt(string)
index= 0
a_to_z = "abcdefghijklmnopqrstuvwxyz"
empty_string = ""
	while index < string.length
	new_string = string[index]
	position = a_to_z.index(new_string)
	second_index = position - 1
	empty_string = empty_string + a_to_z[second_index]
	end
p empty_string
end

