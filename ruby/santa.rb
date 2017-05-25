class Santa

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
  
end

santas = []
genders = ["agender", "female", "bigender", "male", "female"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say"]

5.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end
p santas

