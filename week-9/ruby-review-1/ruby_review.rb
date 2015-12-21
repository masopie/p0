# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

=begin

Make a method that takes an array
Collect the indices and figure out which criteria they meet with if/else
Type in a Hank Hill voice

=end

# Initial Solution

def super_fizzbuzz(array)
  array.collect do |i|
    if i % 15 == 0 && i % 5 == 0
      p "SUPER GAT DANG FIZZBUZZ"
    elsif i % 3 == 0
      p "Fizz"
    elsif i % 5 == 0
      p "Buzz"
    else
      p i
    end
  end

end

#from the rspec file which doesn't work :P
# def random_input_array(base, size)
#   (1..size).map { |i| base**(1+rand(15)) }
# end

#Driver garbage

super_fizzbuzz([1, 3, 234, 1, 2, 5, 55, 555, 35253, 155, 39105, 4123, ])

# Refactored Solution

def super_fizzbuzz(array)
  array.collect { |i| i % 3 == 0 && i & 5 == 0 ? "SUPIZZPUBZZZZ" : i % 3 == 0 ? "PIZBZZ" : i % 5 == 0 ? "BUPZZZ" : p i }
end

# Well crap. That "nested ternary" didn't work. Sadly, I couldn't find nested ternary expression examples that had anything to do with iterators/enumeration so maybe I'm in over my head here.
# Better refactor? Remove the p's