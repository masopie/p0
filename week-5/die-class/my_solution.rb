# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution


class Die                 #tells ruby they are constants - we don't expect def to change

  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("There's no 0 side!")
    end
  end

  def sides
    return @sides
  end

  def roll
    0 + rand(1..sides)
  end
end


die = Die.new(6)
p die
=end

# 3. Refactored Solution

class Die                 #tells ruby they are constants - we don't expect def to change

  def initialize(sides)
    @sides = sides
      raise ArgumentError.new("There's no 0 side!") if sides < 1
  end

  def sides
    @sides
  end

  def roll
    0 + rand(1..sides)
  end
end





# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
ArgumentError means that the argument wasn't valid, as defined by within the rules of a method. You need it in case the user passes the method an argument that wouldn't make sense or would simply break the method.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#rand, #raise, ArgumentError.new. I got lost just trying to place the sides-determining line ('0 + rand(1..sides)') in the right method - silly me, I thought I could just pop it anywhere at first! It was pretty clear after finding #rand that we were going to use it, though. Handy little method.

What is a Ruby class?
It's an object TYPE, as far as I understand it. It's a "blueprint", to which an object must belong. There are defaults (eg "Hello!" is an instance of "string", 42 is an instance of "integer"). And you can create your own.

Why would you use a Ruby class?
The class provides the behaviors(methods) for an object. Methods are attached to classes. And, because the class is repeatable, that means you can replicate a behavior over and over with ease thanks to different objects sharing the same class.

What is the difference between a local variable and an instance variable?
Local variables are "local", or unique, to the "construct" (thanks SE) in which they are defined. So, if you define a local variable in a method, that's the ONLY place it can be accessed. Instance variables are local to a specific "instance"/occurrence of an object. If, say, an object changes the value of said instance variable, it's only changed there.

Where can an instance variable be used?
Within the class definition, if I remember correctly? Oh, strike that. Within class and object definitions. Per rubyist.net, "From outside the object, instance variables cannot be altered or even observed (i.e., ruby's instance variables are never public) except by whatever methods are explicitly provided by the programmer."

=end