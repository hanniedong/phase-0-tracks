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

puts "What are your wallpaper preferences? Please list as many as you would like and type exit when done."
  wallpaper_preferences = []
loop do
  puts "Enter your preference."
  input= gets.chomp
  break if input == "exit"
  wallpaper_preferences << input
  end

puts "What is your favorite color?"
favorite_color = gets.chomp

response = {
  name: full_name,
  age: age_provided,
  children: number_of_children,
  theme: decor_theme, 
  wallpaper: wallpaper_preferences,
  color: favorite_color
}

p response 

puts "Would you like to update any of your responses?"
puts "Put down name, age, number of children, decor theme, or color if you would like to change any of those answers. If not please answer no."

change_response = gets.chomp
if change_response == "name"
  puts "What would you like to change it to?"
  response[:name] = gets.chomp.
elsif change_response == "age"
  puts "What would you like to change it to? (Please input integer)"
  response[:age] = gets.to_i
elsif change_response == "a"
  puts "What would you like to change it to? (Please input integer)"
  response[:age] = gets.to_i
elsif  change_response == "decor theme"
  puts "What would you like to change it to?"
  response[:theme] = gets.chomp
elsif change_response == "wallpaper preferences"
  puts "What would you like to add?"
  response[:wallpaper] == []
  loop do
  puts "Enter your additional preferences."
  input= gets.chomp
  break if input == "exit"
  response[:wallpaper] << input
  end
elsif  change_response == "color"
  puts "What would you like to change it to?"
  response[:color] = gets.chomp
elsif change_response == "no"
  puts "Thank you for your response!"
else 
  puts "Please put in a valid response."
end

p response
puts "Here is the final input. Thank you for your time!"
  