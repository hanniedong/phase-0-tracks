puts "What is your hamster's name?"
hamster_name = gets.chomp
puts "The hamster's name is #{hamster_name}."

puts "What is the volume level of your hamster from 1 to 10?"
volume = gets.to_i
puts "The volume level is #{volume}."

puts "What is the fur color of your hamster?"
fur_color = gets.chomp
puts "The fur color is #{fur_color}."

puts "Is the hamster a good candidate for adoption? (y or n)"
candidate = gets.chomp
if candidate == "y"
	puts "The hamster is a good candidate for adoption!"
else
	puts "The hamster is not a good candidate"
end

puts "Please provide an estimated age for hamster (put NA if unkown)"
age = gets.chomp

if age == "NA"
  age = nil
  puts "We cannot determine the age"
else
  age = age.to_f
  puts "#{hamster_name} is #{age} years old"
end
