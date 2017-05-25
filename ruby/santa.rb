#DIRECTIONS for RELEASE 4
# write a program that creates a lot of Santas
#Use our array of example genders and an array of example ethnicities to create your Santas with a randomly selected gender and a randomly selected ethnicity. 
#find a way to randomly select an array item
#Set your new Santa's age to a random number between 0 and 140.
#program should print out the attributes of each Santa using the instance methods that give you access to that data.

#PSEUDOCODE
#ask: how many santas would you like to build? 
#input = gets.to_i 
#have an array of genders, ethnicities 
#want to randomly generate new Santas santa.new (gender, ethnicity)
#for all of the santas, set the Santa's age to a random number
#print all of the attributes of each santa 

class Santa 
attr_accessor :age

def initialize (gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity 
    @age = 0 
end
end

#user interface
puts "How many Santas would you like to generate?"
number_santas = gets.to_i 

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
ages = (1..140).to_a

number_santas.times do 
  santas << Santa.new(genders.sample, ethnicities.sample)
end

santas.each do |santa|
  santa.age = ages.sample
end

p santas


=begin
-----------------------------------------------
#CODE after RELEASES 0-3

class Santa
#shortcut that writes getter method for age and ethnicity 
attr_reader :age, :ethnicity

#shortcut that writes setter method for gender (allows for both reading and writing)
attr_accessor :gender

def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
      @gender = gender
      @ethnicity = ethnicity
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
      @age = 0
    end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type}."
  end
  
  def celebrate_birthday
    puts age + 1
  end

  def get_mad_at(reindeer)
    position = @reindeer_ranking.index(reindeer)
    @reindeer_ranking.insert(-1, reindeer)
    @reindeer_ranking.delete_at(position)
    p @reindeer_ranking
  end
end
-----------------------------------------------
RELEASE #2
#getter methods for attributes. Methods that wrap around a piece of data and return it to make it pubicly avaialable and readable outside the class
  def age 
    @age
  end
  
  def ethnicity
    @ethnicity
  end 
  
#setter methods: Attributes can be set from outside the class. 
  def gender=(new_gender)
  @gender = new_gender
  end

-----------------------------------------------
=DRIVER CODE
hoho = Santa.new
hoho.speak
hoho.eat_milk_and_cookies
hoho.celebrate_birthday

-----------------------------------------------
RELEASE 1 DRIVER CODE 
santas = []
genders = ["agender", "female", "bigender", "male", "female"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say"]

5.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end
p santas
=end
