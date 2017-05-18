#RELEASE 0
def dbc_pair
  puts "this is pairing 5.3"
  yield("Hannie","Steven")
  puts "hope this works!"
end

dbc_pair {|name1, name2| puts "done by #{name1} and #{name2}"}

#RELEASE 1
myarray = ["apples", "oranges", "pear", "bananas"]

myhash = {
  fruit: "apples",
  meat: "steak",
  drink: "water",
  dessert: "ice cream"
}

myarray.each do|fruit| 
  puts "We need to buy #{fruit}"}
end


myhash.each do|cat, item| 
  puts "for #{cat} we'll buy #{item}"}
end


myarray.map! do |fruit|
  puts fruit
  puts "10" + " #{fruit}" 
end

#Release 2

p array1.delete_if {|x| x<5}
puts hash1.delete_if {|k, v| v <5}

p array1.keep_if {|x| x <= 5}
p hash1.keep_if {|k, v| v < 5}

p array1.select {|x| x <= 5}
p hash1.select {|k, v| v < 5}

p array1.reject {|x| x <= 5}
p hash1.reject {|k, v| v < 5}