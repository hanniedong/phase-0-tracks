=begin
look through array and compare numbers
if number is in array, index is returned
if number is not in array, return nil
=end 

arr = [42, 89, 23, 1]
def search_array (array, number)
counter = 0 
  array.each { |index|
    if number == index
      return counter 
    else 
      counter += 1 
    end
  }
return nil 
end
