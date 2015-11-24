# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: An array of strings.
# Output: One of the array's strings, randomly selected.
# Steps:
# => (Still a little iffy on how my vocab should change regarding defining a class & its methods.)
# => Make sure that there are elements in the array passed
# => Refresh self on best method for random
# => Shouldn't need to do "(1..sides)" this time around since the "sides" are just strings. Integers = random from a range with a set min/max. # of strings (using a counting method) = random.


# Initial Solution

=begin

end
class Die
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new("There are no sides!")
    end
  end

  def sides
    @labels.length  #could also use .count
  end

  def roll
    @labels.sample
  end
=end

# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("No sides labels!!") if labels == []
  end

  def roll
    @labels.sample
  end

  def sides
    @labels.count
  end

end


die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.roll



# Reflection

=begin

- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  The main difference was that the elements of the array we passed were strings instead of integers. There wasn't actually much to change! Just had to make sure that I the #roll method was just pulling from the array name (instead of the more verbose integer-filled array last time, eg '(1..variable)')

- What does this exercise teach you about making code that is easily changeable or modifiable?
  It pays off when you find yourself needing similar code at a later date.

- What new methods did you learn when working on this challenge, if any?
  Well, it turns out that #count and #length are synonymous!

- What concepts about classes were you able to solidify in this challenge?
  The //initialize// concept is taking hold a bit better in my head now. This is basically a stand-in term, preparing for when you eventually establish a new class in:

    objectname = //Class.new//()
    initialize

  I'm still a little worried I'm not sensing the basic difference between "instance" & "class" variables. I know "instance" is a synonym of "object". I also know that there can be class methods & instance methods. I will keep my eyes sharp for more info on each.

=end