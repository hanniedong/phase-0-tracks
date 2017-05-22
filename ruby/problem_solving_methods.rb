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

=begin
create method that starts off with 0 and a 1 in array
keep adding numbers by adding the last two numbers together and shoving it to the array 
=end

array = [0,1]
adjusted_cycle = cycle - 2 
adjusted_cycle.times {
  new_fib = array[-1] + array[-2]
  array << new_fib
}
return array 
end
  
p fib (6)
p fib(7)
p fib (4)

=begin
Start off with array with numbers in random order
Go through array starting at position 0 and 1
Create method that takes two numbers next to each other and moves the bigger one to the right and the lesser one to the left 
=end
arr = [3, 2, 5, 1, 6, 7, -1, 1, -5, 2]

def array_sort(array)
  sorted = true
  cycle = array.length - 1
  while sorted == true
    sorted = false
    cycle.times {|index|
      if array[index] > array[index+1]
        array[index], array[index+1] = array[index+1], array[index]
        sorted = true
      end
    }
  end  
  p array
end

p array_sort(arr)