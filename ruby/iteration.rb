#RELEASE 0
def dbc_pair
  puts "this is pairing 5.3"
  yield("Hannie","Steven")
  puts "hope this works!"
end

dbc_pair {|name1, name2| puts "done by #{name1} and #{name2}"}

