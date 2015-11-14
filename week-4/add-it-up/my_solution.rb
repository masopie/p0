# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Joe Plonsker.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers (integers).
# Output: The sum total of all the separated array
# Steps to solve the problem.


# 1. total initial solution

#Here we attempted to modify what we recalled about multiplying
#integers in array and attempted to split each of them up (hence the code at ##).
#However we recircled and realized that this would not work and that we should apply .each
#to the value
#def total(array)
##  values = input.split
#  input.each {|i| * 2}
#    i2 = i * 2
#    puts "#{i2}"
#  end
#end

# 3. total refactored solution
#Here we have the basic structure.
#def total(array)
 #    sum = 0
 #    array.each {|i| i + i }
 #   return sum
#end

#Zero kept coming back as the only result. It became clear that all that was defined was a sum that was zero and all
#that was comming back was the number zero. Just adding array integers to each other wouldn't do anything.
#We had to return a modified sum, and the way to do that was to add the array to line 45 above.
#Setting the sum to zero was in my pervious notes. I am not entirely sure why it works out that way. I'll have to read
#up on it again

 def total(array)
     sum = 0
     array.each do |i|
      sum = sum + i
    end
     return sum
 end

dog = [1, 2, 3]

total(dog)

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings to be left as strings.
# Output: A full "sentence" (string), made by adding the array elements.
# Steps to solve the problem.
# => Simpler than the first half. Our steps are threefold:
# => 1) Accept the array
# => 2) Point our method toward the individual elements - I THINK we can iterate through it with .each again - of the array with a new local variable (as Joe and I learned SO laborously through the first chunk).
# => 3) Add each element (string) to the last


# 5. sentence_maker initial solution
# We separated for this one due to schedules. Joe found the solution before I did and emailed me about it, so I'm opting to create my initial solution here before reading how he arrived at his. What I have below passed the first 2 tests but couldn't return the grammatically correct solution. Time to reread Chris Pine!

def sentence_maker(array)
      sum = ""
      array.each do |i|
      sum = sum + i.to_s + " "
    end

    sum = sum[0...-1]

     return sum.capitalize + "."
end

# 6. sentence_maker refactored solution

