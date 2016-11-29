#release 0 

#call each index of the array & compare those to integer input of the function 

#can only use .each and .length    
arr = [42, 89, 23, 1,]

def search_array (array, integer)   
  not_found = false
  found = false
  object_index = nil
  array.each do|x|
    if x == integer 
      object_index = array.index(x)
      not_found = false
      found = true 
    break
    else 
      not_found = true 
    end
  end
  if not_found == true 
    p nil 
  end
  if found = true
    puts object_index
  end
end
search_array(arr,23)

#Release 1: Calculate Fibonacci Numbers
#build a function that creates an array with 0 and 1 as the first two values and adds two values together and adds the sum to the array and repeats the sequencce for each two digits until the arrays length passed through the method 

def fib(int)
  array = [0, 1]
  first_position = 0 
  second_position = 1
  while second_position <= int-2
    new_value = array.fetch(first_position)+array.fetch(second_position)
    first_position += 1
    second_position += 1
    array << new_value
  end
  highest = array.fetch(99)
end
if fib(100) == 218922995834555169026
  puts "You did it!"
end

#Release 2: Sort an Array
#Get the array length 
#For the length of the array - process each index position starting with the 
#beginning position and the one next to it and incrementing to the next 
#position and the one after that until reaching the end of the array. 
  #define variable x that specifies length of the array -1. 
  #start a loop that will run until no more swaps are performed. 
    #start a loop that will run x times
      #Get the first index of the array and the second index of the array. 
      #Compare them and if the value of the first index is greater swap with 
      #the second index
      #repeat this incrementing first and second position by 1 until the second 
      #index position specified is the last position in the array. 
      #tell previous loop if no more swaps have been performed.
  #return the array


def bubble(array)
  x = array.length
  loop do
    swap = false

    (x-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap = true
      end
    end

    break if not swap
  end

  array
end











