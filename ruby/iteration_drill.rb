# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
zombie_apocalypse_supplies.each do|supplies| 
  puts "#{supplies} *"
end
# ----

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
zombie_apocalypse_supplies.each_index do |supply_one|
	(supply_one + 1...zombie_apocalypse_supplies.length).each do |supply_two|
		if zombie_apocalypse_supplies[supply_one] > zombie_apocalypse_supplies[supply_two]
		zombie_apocalypse_supplies[supply_one], zombie_apocalypse_supplies[supply_two] = zombie_apocalypse_supplies[supply_two], zombie_apocalypse_supplies[supply_one]
		end
	end
end
p zombie_apocalypse_supplies

# ----

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
def search_array (array, word)
counter = 0 
  array.each { |index|
    if word == index
      p "#{word} is in array"
    else 
      counter += 1 
    end
  }
return nil
end

search_array(zombie_apocalypse_supplies, "boots")
# ----

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

zombie_apocalypse_supplies.each do |supply|
 		if supply <= supply[5]
 			puts supply
 		else
 			zombie_apocalypse_supplies.delete(supply)
 		end
 	end
  p nil

# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "bananas" , "warm clothes", "money", "compass"]

both_survivors_supplies = zombie_apocalypse_supplies | other_survivor_supplies

# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.each do |animal, extinction_year|
		print "#{animal}-#{extinction_year} * "
	end
# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
extinct_animals.each do |animal, year|
 		if year < 2000
 			puts animal
 		else
 			extinct_animals.delete(animal)
 		end
 	end
# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
extinct_animals.each do |animal, year|
 		extinct_animals[animal] = year - 3
 	end

# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

extinct_finder = ["Andean Cat","Dodo","Saiga Antelope"]

	extinct_animals.each_key do |extinct_animals|
		extinct_finder.each do |animal|
 			if extinct_animals == animal
 				puts "#{animal} is extinct"
 			else
 				false
 			end
 		end
	end
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

sort_extinct_animals = extinct_animals.sort_by {|animal, year| year}
rotate_sort_extinct_animals = sort_extinct_animals.rotate(2)
non_extinct_animals = rotate_sort_extinct_animals.shift
# ----
