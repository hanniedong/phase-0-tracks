=begin
INSTRUCTIONS
Swap the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

When will it be helpful to convert the string to an array to work with it more easily?
How will you figure out whether a letter is a vowel?
How will you deal with the fact that some letters are uppercase?
How will you handle edge cases?

PSEUDOCODE
Ask for user to input name
Swap the name

Create vowel changer method 
Have array that contains all the vowels
Have array that contains capitalized vowels
Split the swapped name
For every letter, check if there are vowels
If there are vowels, rotate the vowels by 1
Join the swapped name

Create consonent changer method 
Have array that contains all the consonents
Have array that contains capitalized consonents
Split the swapped name
For every letter, matcth the consonents to the array
If there are vowels, rotate the consonent by 1
Join the swapped name

Ask user if they would like to encrypt another name. 
If yes, ask what the name is and encrypt it
If no, exit program.
=end

puts "What is your first name?"
first_name = gets.chomp.capitalize
puts "What is your last name?"
last_name = gets.chomp.capitalize

puts "Would you like to encrypt your name?"
input = gets.chomp

input_name = last_name + " " + first_name

def vowel_changer(swapped_name)
vowels = ['a', 'e', 'i', 'o', 'u']
cap_vowels = ['A','E','I','O','U']
swapped_name_array= swapped_name.split('')
swapped_name_and_vowel = swapped_name_array.map do |letter|
  if vowels.include?(letter)
    vowels.rotate(1)[vowels.index(letter)]
  elsif cap_vowels.include?(letter)
    cap_vowels.rotate(1)[cap_vowels.index(letter)]
  else
    letter
  end
end
swapped_name_and_vowel_string = swapped_name_and_vowel.join 
end
