class Hangman
  attr_accessor :user_word
  attr_accessor :underscore_word
  attr_accessor :user_array
  attr_accessor :guess_count
  attr_accessor :count
  attr_accessor :underscore_word_array

def initialize
  @guess_count = 0 
  @count
  @user_word
  @underscore_word
  @user_array = []
  @guess_array = []
end

def user_word(input)
  @user_word = input.downcase 
  @user_array = @user_word.split(//)
end

def underscore_word(input)
  @underscore_word = "-" * input.length
  @underscore_word_array = @underscore_word.split(//)
  p @underscore_word
end

def counting_guesses(input)
  @count = input.length
  "You have #{@count} guesses!"
end

def guess_letter(input_letter)
@guesscount = 0 
    if @guess_array.include?(input_letter)
      puts "You already guessed that! Please guess again."
      @guess_count = @guess_count
      puts "You are at #{@guess_count} guesses."
    elsif @user_array.include?(input_letter)
      @guess_array << input_letter
       @letter_index = @user_array.index(input_letter)
       @underscore_word_array.delete_at(@letter_index)
       @underscore_word_array.insert(@letter_index,input_letter)
       p @underscore_word_array.join
        @guess_count += 1
        puts "You got a letter! You have made #{@guess_count} guesses."
    elsif !@user_array.include?(input_letter)
      @guess_array << input_letter
      @guess_count += 1
      puts "Guess again! That was incorrect. You have made #{@guess_count} guesses."
    end
  end
end


#USER INTERFACE
puts "Welcome to the Word Game! Player 1 will choose the word. Player 2 will be guessing the word. Guesses are limited and the number of guesses available to related to the length of the word. Repeated guesses do not count against you. HAVE FUN!"
game = Hangman.new

#Ask user 1 for input
puts "User 1: Please input word."
input = gets.chomp
game.user_word(input)

#Ask user 2 for input
puts "User 2: Guess the letters for the word below."
game.underscore_word(input)
p game.counting_guesses(input)

until game.guess_count == game.count
  puts "Please enter a letter."
  input_letter = gets.chomp
  if game.underscore_word_array.include?("-")
     game.guess_letter(input_letter)
  elsif !game.underscore_word_array.include?("-")
    puts "Congrats! You got the word!" 
  else  
    puts "Sorry, you lost."
  end
end

puts "GAMEOVER. Sorry, you ran out of guesses."