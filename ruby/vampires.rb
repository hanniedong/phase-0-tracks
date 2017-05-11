puts "How many employees are there to be processed?"
employees = gets.to_i

until employees == 0
puts "What is your name?"
name = gets.chomp

if name == "Drake Cula" 
	vampire_name = true
elsif name == "Tu Fang"
	vampire_name = true
else
	normal_name = true
end
	
puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
year = gets.to_i

	if 2017 - year == age
		normal_age = true 
		puts "Age and year of birth lines up mathematically"
	else
		vampires_age = true
		puts "Age and year of birth does not line up mathematically"
	end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
garlic = gets.chomp

if garlic == "y"
	normal_garlic = true
else 
	vampires_garlic = true
end

puts "Would you like to enroll into the company's health insurance? (y or n)"
insurance = gets.chomp

if insurance == "y"
	normaL_insurance = true
else 
	vampires_insurance = true
end

if normal_age && (normal_garlic || normal_insurance)
	puts “Probably not a vampire.”
elsif vampires_age && (vampires_garlic || vampires_insurance) 
	puts “Probably a vampire.”
elsif vampires_age && vampires_garlic && vampires_insurance 
	puts “Almost certainly a vampire.”
elsif vampires_name
	puts "Definitely a vampire."
else
	puts “Results inconclusive.”
end

end
