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
  new_array = array.dup
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

def pad!(array, min_size, value = nil)
  min_size - array.size.times do
    array << value
  end
  return array
end

# 3. Reflection


# Were you successful in breaking the problem down into small steps?
# => Yeah, I think so! It just felt a little jumbled doing it but made sense after a pass or two.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => I think the main problem is often just taking a deep breath and deciding where to start. Other than that, it wasn't too terrible. Just had to focus on not getting too convoluted.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => It wasn't. It worked for most of the testing examples in the spec file but, as always seems to be the case, one or two little things hung it up. In this case, it was the act of duplicating/"copying" the array (for NON-DESTRUCTIONNNNN) rather than just pointing to the array with a new array variable.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => Heck yeah! The carrots (some "syntactic sugar" [that phrase... that's got some gross phonetics right there] that we didn't think mattered) shortened it up nicely.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I mean... It's readable. Someone who hadn't looked at any Ruby couldn't read it but it's not convoluted, I'd say. We just wanted our variable names to point to values that would be obvious.

# What is the difference between destructive and non-destructive methods in your own words?
# => Destructive methods change the original objects on which they're called. Non-destructive methods duplicate/clone/copy/SOMETHING (.dup, Array.new(array), etc) the original object so that it both gets preserved and your machine doesn't have to work harder to revise things over and over.