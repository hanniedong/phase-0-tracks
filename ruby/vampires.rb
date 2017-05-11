puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
year = gets.to_i

	if 2017 - year = age
		puts "Age and year of birth lines up mathematically"
	else
		puts "Age and year of birth does not line up mathematically"
	end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
garlic = gets.chomp

if garlic == "y"
	normal_eats_garlic = true
else 
	vampires_eats_garlic = true
end

puts "Would you like to enroll into the company's health insurance? (y or n)"
insurance = gets.chomp
if insurance == "y"
	normal_insurance = true
else 
	vampires_insurance = true
end

vampires_gets_age = false
vampires_eat_garlic = false
vampires_insurance = false
normal_gets_age = true
normal_eat_garlic = true
normal_insurance = true



