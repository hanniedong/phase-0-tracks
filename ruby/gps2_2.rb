=begin
PSEUDOCODE

# Create empty hash called grocery list

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split the items into array
  # Iterate through array and add it to hash 
  # set default quantity 
  # print the list to the console 
# output: hash with the item and default quantity 
=end

def create_list(list_string)
grocery_list = {}
	list_array = list_string.split(' ')
	list_array.each do |item|
		grocery_list[item] = 1
	end
	return grocery_list
end 

grocery_hash = create_list("carrots apples cereal pizza")
p grocery_hash

=begin
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	#add key, value pair to the hash
# output: updated hash
=end

def add_item(food, item, quantity)
	food[item] = quantity 
end

add_item(grocery_hash, "milk", 3)
p grocery_hash

=begin
# Method to remove an item from the list
# input: list, item
# steps:
	#delete key value pair from hash
# output: updated hash
=end

def remove_item(list, item)
	#list.delete_if{|key,value| key == item}
	list.delete(item)
end

remove_item(grocery_hash, "milk")
p grocery_hash

=begin
# Method to update the quantity of an item
# input: list, item, quantity
# steps: 
	#IF item has quantity value already in hash, want to update it
# output: updated hash
=end

def update_item(list, item, quantity)
	if quantity > 0
		list[item]=quantity
	elsif quantity == 0 
		remove_item(list,item)
	else
		p "Please enter valid quantity"
	end 
	list 
end
puts "This is the update."
p update_item(grocery_hash, "apples",5)
p grocery_hash

=begin
# Method to print a list and make it look pretty
# input: hash
# steps:
	#print each key value pair within the hash
# output:
	#driver code 
	#key value pair 
=end

def print_list(hash)
	puts "GROCERY LIST"
	hash.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
end 

print_list(grocery_hash)

=begin 
REFLECT
-From this challenge, I've learned the importance of pseudocoding. 
The more detail that one gets into while pseudocoding, the easier the 
actual coding process is. 

-Using a hash is useful for this challenge because you are able to update
the quantity (value) for each item (key). You would not be able to do that
as easily if the data structure were an array.

-A method returns the last evaluated value. 

-Objects and values can be passed into methods as arguments.

-To pass information between methods, the output of the method should be assigned 
to a varaible outside of the method and then used in the next method.

-The concepts of how to pass information between methods and what values are returned 
from methods were solidified from this session. However, I still need work on how to
work with hashes and arrays. 