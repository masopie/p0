# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
  ##this is the refactored attempt. things looked too convoluted using what i saw here and here:
  ## http://ruby-doc.org/core-2.1.1/Array.html#method-i-3C-3D-3E
  ## http://ruby-doc.org/core-2.1.3/String.html#method-i-3C-3D-3E
def shortest_string(list_of_words)
  list_of_words.min_by(&:length)

  ## So. I'm seeing now that you have to have multiple placeholders/variables -- eg |a, b| -- to let the default methods, eg min/max, work properly.
  #ATTEMPT 1, only passes 3/5 tests : list_of_words.min { |a, b| }
  #ATTEMPT 2, errors out w/ "end" syntax issue: list_of_words.each do |a, b|
  #  until b > a
  #    return a
  #  else return b
  #end
end