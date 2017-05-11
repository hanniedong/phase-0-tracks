puts "How many employees are there to be processed?"
employees = gets.to_i

while employees > 0

puts "What is your name?"
name = gets.chomp

if name == "Drake Cula" 
	vampire_name = true
elsif name == "Tu Fang"
	vampire_name = true
else
	vampire_name = false
end
	
puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
year = gets.to_i

if Time.new.year - year == age
	vampires_age = false
	puts "Age and year of birth lines up mathematically"
else
	vampires_age = true
	puts "Age and year of birth does not line up mathematically"
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
garlic = gets.chomp

if garlic == "y"
	vampires_garlic = false
else 
	vampires_garlic = true
end

puts "Would you like to enroll into the company's health insurance? (y or n)"
insurance = gets.chomp

if insurance == "y"
	vampires_insurance = false
else 
	vampires_insurance = true
end


loop do
	puts "Please list all of your allergies one at a time. Write done when done listing."
	allergies = gets.chomp
	if allergies == "sunshine"
		puts "You're allergic to the sun!"
	break
	elsif allergies == "done"
	break
	end
end

if allergies == "sunshine"
	puts "Probably a vampire"
elsif !vampires_age && (!vampires_garlic || !vampires_insurance)
  	puts "Probably not a vampire."
elsif vampires_age && (vampires_garlic || vampires_insurance) 
	puts "Probably a vampire."
elsif vampires_age && vampires_garlic && vampires_insurance 
	puts "Almost certainly a vampire."
elsif vampire_name
	puts "Definitely a vampire."
else
  	puts "Results inconclusive"
end

employees = employees - 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."