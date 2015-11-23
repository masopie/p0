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
  a_uniq = array.uniq
  freq = Hash.new(0)

  a_uniq.each { |item| freq[item] }
# p freq

  array.each { |item| freq[item] += 1 }
# p freq
  freq = freq.group_by {|a,b| b}.max.last
# p freq

  if freq.size > 1
    freq = freq.map {|x| x[0]}
  else
    return [freq[0][0]] #just a reminder - these bits refer to the 1st ("0th") element of the 1st ("0th") array!
  end
end

  # => The next chunk is what lets you return more than one element if their frequencies/occurrences are both the highest
  #freq.group_by {|a, b| b}.max.last.map {|row| row[0]} #.reverse!

  ##### test each piece w/ nums / strings array
  ##### concise + readiable != SAME!
  ##### TRY ABOVE LINE BY PRINTING AFTER EACH STEP

  # => Found on stack overflow http://stackoverflow.com/questions/9194233/get-maximum-as-an-array-in-case-of-more-than-one-with-same-maximum-value
  # => Uses .group_by - http://chrisholtz.com/blog/more-than-you-care-to-know-about-the-uniq-method/

p mode([4, 4, 5, 5, 6, 6, 6, 7, 5])

# 3. Refactored Solution

#Going to skip the refactoring here. Pair and I sank untold hours into this, no time, no time!!


# 4. Reflection

=begin

- Which data structure did you and your pair decide to implement and why?
I guess our data structure was an array? Mainly because we could iterate over it!

- Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Er... Yes. I think we were more successful, in a sense. We kept it VERY VERY simple this time around, comparative to how complex we had to let the code get.
In my mind, at this point, the simpler the pseudocode, the better. So long as you aren't thinking in weird ways about what you need to do.

- What issues/successes did you run into when translating your pseudocode to code?
We called an extra .reverse and .sort_by that just, like, absolutely killed us. Created this weird permanently incorrect ordering with the returned array, regardless of object class type.

- What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#each was the big guy. However, the new methods we picked up from hair-pulling Google searches were: uniq, group_by, max, map, and last. I'm still a bit confused about the purpose of map, but the rest made sense once we popped them in and saw the results.
=end