=begin
Prompt interior designer to input details of a given client including: 
	client's name
	age
	number of children
	decor theme
	favorite color	
Covert user input to appropriate data type
Assign thee user input to a variable
Create a hash which each symbol key to the variable
Print the hash back when designer has answered all of the questions
Give the user the opportunity to update the key 
Assign the input to the key to update the volume
Print the latest version of the hash
=end

puts "What is your name?"
full_name = gets.chomp

puts "What is your age?"
age_provided = gets.to_i 

puts "How many children do you have?"
number_of_children = gets.to_i

puts "What is your preferred decor theme?"
decor_theme = gets.chomp

puts "What is your favorite color?"
favorite_color = gets.chomp

response = {
  name: full_name,
  age: age_provided,
  children: number_of_children,
  theme: decor_theme, 
  color: favorite_color
}