# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def largest_integer(list_of_nums)
  list_of_nums.max

#  if list_of_nums.empty?
#    ## i did have "list_of_nums == []" but this seems better
#    return nil
#  end
## so i know i have to look over the array and keep track of the largest value so far. hmm...
## referring to http://ruby-doc.org/core-2.2.1/Array.html ~
#  list_of_nums.keep_if do |e, f|
#    e > f
#    return e
#  end

end