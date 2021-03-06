# Virus Predictor

# I worked on this challenge [by myself].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.
#It allows you to load a file that you have created into the present working file.
#Requre is used to include any defined ruby program in third program body. It loads a file a standard library that Ruby comes loaded with or that is saved somewhere else on the computer.

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
  # When creating a new object instance it will set the variables as specified
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  def virus_effects
  # Returns the private information from the predicted_deaths and speed_of_spread methods
    predicted_deaths
    speed_of_spread
  end

private

  def predicted_deaths
  #it predicts the number of deaths according to the population density and population
  # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
  #This method predicts the speed of the spread based on the population density 
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

def virus_predictor(states)
    states.each do |state, population_density, population_info|
      state_predictor = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
      state_predictor.virus_effects
    end
end

virus_predictor(STATE_DATA)


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The first hash is made of a string. The second hash used symbols to represent the relevant data for each state. 

# What does require_relative do? How is it different from require?
#Require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.
#It allows you to load a file that you have created into the present working file.
#Requre is used to include any defined ruby program in third program body. 
#It loads a file a standard library that Ruby comes loaded with or that is saved somewhere else on the computer.

# What are some ways to iterate through a hash?
# Using .each to iterate through the entire hash.  

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# In the virus_effect method, there were variables that were not needed because they are instance variables that are visible throughout the object. 

# What concept did you most solidify in this challenge?
# I now understand how to iterate through a nested hash 