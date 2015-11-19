# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# => A positive minimum and maximum integer, which the method uses to, in turn, select a random positive integer.
# What is the output? (i.e. What should the code return?)
# => A string: the comma-separated integer that was randomly selected within the integer parameters.
# What are the steps needed to solve the problem?
# => Convert (.to_s) the integer to a string
# => Count (.length) the characters in the string
# => Separate string into smaller strings with 3 characters each. Can't use .scan(pattern) sooo... Hm. We will probably have to disassemble and reassemble the larger string w/ commas. We can do this by:
# => 1. Dividing the .length by 3 (ok this might be too early)
# => 2. str + "," + str
# => 3. making sure that any non-3 group (eg 1 or 2) on the left side of the string gets added with a comma as well.
# => 4. the above will require .first i think
# => ...Maybe this means we'll need an "If length % 3 == 1 or 2" statement. Alright, anyway, let's try some crap out!!

# 1. Initial Solution
def separate_comma(integer)
string = integer.to_s
#ATTEMPT1:
# value.to_s
# value.split(","). Whoops. Those were my two initial lines, but no way to break that into 3-digit chunks though. A little googling yielded ".each_slice()"!
#ATTEMPT2:
#  length = string.length
#  if length % 3 != 0
#    x = integer.take(1) #takes the first () elements of the array
#  end
  # OK so here is a hellish roadblock if I've ever seen one. I really can't figure out a way to elegantly accommodate for TWO conditions 1 OR 2 digits in the beginning
#  value.each_slice(3) do |a|
#    p "#{a.join},"
#  end
end

#Here's where things suddenly became clear: I have to REVERSE. I was looking at random alternatives with stack exchange searches and saw something mentioning "reversal." Honestagod I can't even remember what it was about, I believe it was regarding the ".each_slice()" method.

def separate_comma(input)
  string = input.to_s
  inc=0
  (string.length-1).downto(0) {|i| unless inc==2 then inc+=1 else string.insert(i,','); inc=0 end}
  string[0]='' if string[0] == ','
  string
end

# 2. Refactored Solution




# 3. Reflection