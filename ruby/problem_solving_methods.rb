##### ##  RELEASE 0: Implement a Simple Search  ## #####

arr = [42, 89, 23, 1]

def search_array (array, integer)
  # set counter to 0
  i = 0
  while i < array.length #while the counter remains < number of items within the array, do the following
    if array[i] == integer # evaluate if current position == integer input
      p i # if so, return the counter (index number) and break
      break
    else
      i += 1 # otherwise, add one to the counter
    end
  end
end


##### ##  RELEASE 1: Calculate Fibonacci Numbers  ## #####

def fib(length)
  array = [0, 1]
  i = 1
  # account for edge cases [length <= 2]
  if length == 0
    array = []
  elsif length == 1
    array = [0]
  elsif length == 2
    array
  else
    while i < length - 1
      #take array[i] + array[i-1], then push it to array
      array.push(array[i] + array[i-1])
      i += 1
    end
    array
  end
end

# Test the 100th number
p fib(100)[99] == 218922995834555169026 # the 99th index position should store the 100th number.  Therefore, this returns 'true'


##### ##  RELEASE 2: Sort an Array  ## #####

array = [9, 7, 1, 8, 3, 9, 1, 7, 5, 4, 9, 2, 1]

# take in an array as an argument
def bubble_sort(array)

  # set variables
  i = 0
  swapped = false

# initiate a loop
  while i < array.length - 1
    # set up temporary variables to hold array items
    a = array[i]
    b = array[i+1]
    # if a and b are in the correct order...
    if a < b || a == b
      i += 1
    else # if a and b are in an incorrect order...
      array[i] = b
      array[i+1] = a
      swapped = true
      i += 1
    end
    # Is sorting complete (swapped remains false)? If any were in an incorrect order, rerun bubble_sort on array
    if swapped
      bubble_sort(array)
    end
  end
  # return array
  array
end

p bubble_sort(array)