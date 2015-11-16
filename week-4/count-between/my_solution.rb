# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  list_of_integers.count do |i|
    i >= lower_bound && i <= upper_bound
  end
end

## just guessed here. got SUPER SUPER CONFUSED about, like, just visualizing splitting the 3 arguments for count_between up and using them. I guess it's important to bear in mind that arguments for a method can have all sorts of roles ---- one won't, say, simply be compared as > or < to the second & the third!