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
# => 1. Dividing the .length by 3 (ok this might be too early and this might not work, a little simple-minded of me)
# => 2. iterate using a 3-digit chunks of string + ","
# => 3. making sure that any non-3 group (eg 1 or 2) on the left side of the string gets added with a comma as well.
# => 4. the above will require .first i think
# => ...Maybe this means we'll need an "If length % 3 == 1 or 2" statement. Alright, anyway, let's try some crap out!!

# 1. Initial Solution

#insanely wrong 1st attempts are at very bottom

=begin
def separate_comma(integer)
  string = integer.to_s
  chunks = string.length - 3
  p chunks                        #p chunks only used to monitor what's happening
  while chunks > 0
    p string.insert(chunks, ",")  #p only used to monitor what's happening
    chunks = chunks - 3
  end
  return string
=end

# 2. Refactored Solution

#######NOTE:
#######So I know we aren't making/changing "class" yet. My friend gave me a brief introduction to defining a class, which allowed my first (unsuccessful) attempt, using 'reverse' and 'push' on a string, successful! But longer. Which sucks.

#=begin
class String
  def push(index, char)
    self.insert(index, char)
  end
end

def separate_comma(integer)
string = integer.to_s.reverse
  chunks = string.length - 3
  while chunks > 0
    string.push(chunks, ",").reverse
    chunks = chunks - 3
  end
return string
end

puts separate_comma(10384519385203948)

# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
# => Just remembering that I had to iterate & couldn't use "regular expressions." This kept me mindful that I needed to break the integer down, and smash its parts back together with ,'s.
#Was your pseudocode effective in helping you build a successful initial solution?
# => A little. It kept me on-track, but i still spent HOURS trying to get the "flow" down.
#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# => Insert. That's the big one. Just simplified how my code works.
#How did you initially iterate through the data structure?
# => Tried to use .each_slice. Oh boy, the string HATED having that called on it.
#Do you feel your refactored solution is more readable than your initial solution? Why?
# => Yup. Never got an original solution, refactoring got me there.

# Errors. Errors errors errors:
# `separate_comma': undefined method `each_slice'
# `separate_comma': undefined method `push' (screwed my .reverse plan, but helped me find 'insert'! :D )
# I'm seeing a pattern here. I didn't properly set up my method to "require 'enumerator'" (found out that is necessary via stack exchange but I was unsuccessful at implementing it for this exercise). Still, after having to abandon "push"ing each string chunk onto the end of a "reverse"ed string, I at least stumbled upon "insert". Heck, cut down on the code lines at least!








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

#Here's where things suddenly became clear: I have to REVERSE. I was looking at random alternatives with stack exchange searches and saw something mentioning "reversal."

#...And here's what stinks. So I learned a few things about classes (you can't reverse & push a string - the string class doesn't recognize "push"). Had to get creative: