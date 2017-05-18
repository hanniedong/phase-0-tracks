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

