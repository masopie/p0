#Pseudocode:
# Take giant array of peoples' first+last names as individual elements
# Smash every 5 people into into mini-arrays
# Any leftover amount (less than 5) can be the last accountability group.
# Late pseudocode thought: I should probably randomize how people are chosen, so find out what that method is. .rand / .shuffle .sample might work too


#Solution

#=begin
def accountability(group)
  groups = group.shuffle.each_slice(5).to_a
  p groups
end


#Notes:
# tried to insert 'groups = group.shuffle' at the beginning at first.  VERY weird... this just returns the elements in their regular order if i call shuffle up here instead of between group & #each_slice below
# i wonder why i can use #shuffle there but not #sample... i'd guess it's because sample TAKES a random element, whereas shuffle simply makes all the elements random

#Refactored Solution

# I went with .each_slice straight away because I'd read about it so much for the past exercises. The use of 'groups' becomes vestigial when I'm just using an enumerator, vs. going the more basic route of iterating and preserving the original by .dup'ing it. For now, my refactored solution will just be:

def accountability(group)
  group.shuffle.each_slice(5).to_a
end

# ...and I will try the method without using .each_slice to enumerate if I have extra time.

group = ["Jack Abernethy", "Mohammad Amin", "Zollie Barnes", "Reuben Brandt", "Dana Breen", "Breton Burnett", "Saundra Vanessa Castaneda", "Luis De Castro", "Nicolette Chambers", "Kerry Choy", "Nick Davies", "Katherine DiAngelo", "Adrian Diaz", "David Diaz", "Bob Dorff", "Michael Du", "Paul Dynowski", "Jenna Espezua", "Sean Fleming", "Jennifer Gilbert","Marcel Haesok", "Arthur Head", "Jonathan Huang", "Thomas Huang", "Alex Jamar","Kevin Jones", "Steven Jones", "Cole Kent", "Caroline Kenworthy", "Calvin Lang", "Yi Lu", "David Ma", "Charlotte Manetta", "Sean Massih", "Tom McHenry", "Alex Mitzman", "Lydia Nash", "Brenda Nguyen", "Matthew Oppenheimer", "Mason Pierce", "Joe Plonsker", "Mira Scarvalone", "Joseph Scott", "Chris Shahin", "Benjamin Shpringer", "Lindsey Stevenson", "Phil Thomas", "Gary Tso", "Ting Wang", "Clinton Weber", "Monique Williamson", "Regina Wong", "Hanah Yendler" ]

p accountability(group)


# What was the most interesting and most difficult part of this challenge?
# => Well the most interesting part was dropping the .each_slice bomb! Such simplicity with enumeration! I had to do so much reading just to barely start wrapping my head around an enumerators, and I'm nowhere near finishing yet. :P It's a rabbit hole that leads to learning how to make classes....

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => Yup! Although here I think I lucked out and didn't need to go through the full gamut of regular iteration.

# Was your approach for automating this task a good solution? What could have made it even better?
# => It sure as heck was good, if I do say so myself! I suppose there might be room for some kind of erroneous randomization or grouping with a total student # whose modulo (%) remainder != 0, but I'm not informed enough yet to test whether that's an actual issue or not.

# What data structure did you decide to store the accountability groups in and why?
# => An array, because it's enumerable. Strings aren't and I just abandoned the extra lines converting an inputted string :( . Via SE:
# "The reason why String is not enumerable is because there are no 'natural' units to enumerate, should it be on a character basis or a line basis? Because of this String does not have an #each String instead provides the #each_char and #each_byte and #each_line methods for iteration in the way that you choose."

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => #shuffle and #sample! Well, again, as of the time of writing this, I used an enumerator initially. So I'm sure I'll frustratedly find a new method or two trying to do it the clunkier iteration route later.