# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# => An array, a non-negative integer (that will define the minimum size of our padded array), and a value (the amount of padding).
# What is the output? (i.e. What should the code return?)
# => The output is the original array we passed to the method. If min_size > array size, output the array with added elements having a value of "value" (padding) until you are at the size of the array. ie, array + min_size (# of "value" values).
# What are the steps needed to solve the problem?
# Find size of array
# If min_size <= size of array, just return array.
# If min_size > size of array:
# Subtract array.size? (its number of elements) from min_size
# => difference = (min_size - array.size?)
# Add that number of "value" values as elements to the end (right side) of the array
# => eg use .push.times(difference)
# return array!!!!!

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  a_size = array.size
  if min_size <= a_size
    return array
  elsif min_size > a_size
    diff = min_size - a_size
    diff.times do
      array.push(value)
    end
  end
  array
end

#p pad!([1, 2, 3], 5, "apple")

def pad(array, min_size, value = nil) #non-destructive
  new_array = array
  a_size = array.size
#  if min_size <= a_size
#    return array
  if min_size > a_size
    diff = min_size - a_size
    diff.times do
      new_array.push(value)
    end
  end
  new_array
end

#p pad([1, 2, 3], 5, "apple")

# 2. Refactored Solution



# 3. Reflection