# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def smallest_integer(list_of_nums)
  list_of_nums.min

## well... so in refactoring after i got stuck for awhile, it turns out there's a default method, .min, that just figures all this out for you i guess? that seemed easier than i began babbling out down below =/

  ##for empty arrays
  #if list_of_nums.empty?
  #  return nil
  #end

  ##found the .any? method while googling. figure out how to use it.
  #if list_of_nums.any?
  #  return 0
  #end

  #if list_of_nums.any? do |e|
  #  e.min { |a, b| a < b }
  #  return a
  #end

end