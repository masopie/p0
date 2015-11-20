# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# => An array of numbers or strings.

# What is the output? (i.e. What should the code return?)
# => An array of the most frequent values.

# What are the steps needed to solve the problem?
# Make unique version of the input array (.uniq), assign it a variable.
# => eg. a = array.uniq
# make new hash from the array
# => eg. a.to_Hash
# Here we recalled the "Histogram" exercise in codecademy (simply finding word frequency using key-value pairs).



# 1. Initial Solution
def mode(array)
  freq = Hash.new(0)
  a_uniq = array.uniq
  a_uniq.each do |x|
    freq[x]
  end
  array.each do |x|
    freq[x] += 1
  end
  freq = freq.sort_by do |a, b|
    b.reverse!
  end #.to_h ##sort_by returns the data it was originally passed, not a hash/array by default

  # => The next chunk is what lets you return more than one element if their frequencies/occurrences are both the highest
  freq.group_by {|a, b| b}
    freq.max.last.map {|row| row[0]} #.reverse!

  ##### test each piece w/ nums / strings array
  ##### concise + readiable != SAME!
  ##### TRY ABOVE LINE BY PRINTING AFTER EACH STEP

  # => Found on stack overflow http://stackoverflow.com/questions/9194233/get-maximum-as-an-array-in-case-of-more-than-one-with-same-maximum-value
  # => Uses .group_by - http://chrisholtz.com/blog/more-than-you-care-to-know-about-the-uniq-method/

=begin
  if freq.size > 1
    freq.each { |x| return freq[0][0] }
  else
    return freq[0][0]
  end

  #freq.flatten!
  #freq.first(n=1)
=end

end

p mode([4, 4, 5, 5, 6, 6, 6, 7, 5])

# 3. Refactored Solution




# 4. Reflection