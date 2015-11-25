# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An answer (integer), and then a guess (integer)!
# Output: :high if the guess is larger than the answer, :low if it's lower than the answer, and :correct if it's equal to the answer.
# Steps:
# => Set instance (one @) variables for the answer argument, the guess number argument, and the solved boolean
# => Speaking of that, #solved is just going to be a boolean result so its will probably need the ? after it (solved?)
# => I know i'll need if/else statements to go somewhere. I will try within the #guess(number) construct first and see if I'm wrong about that (they may need to go within the #initialize definition).

################# note to self: am i supposed to be doing an Input, Output, and Steps for each of the 3 constructs within the

# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
    if answer == []
      raise ArgumentError.new("Need an integer!")
    end
  end

  def guess(number)
    @number = number
    if number > @answer
      return :high
    elsif number < @answer
      return :low
    else
      p :correct
    end
  end

  def solved?
    if @number == @answer
      return true
    end
    until @number == @answer
      return false
    #else true                 #guess I don't  need this line? errors out if it's in there w/o lines 39-41
    end
  end
=end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    raise ArgumentError.new("Need an integer!") if answer == []
  end

  def guess(number)
    @number = number
    return :high if number > @answer
    return :low if number < @answer
    else p :correct
  end

  def solved?
    return true if @number == @answer
    return false until @number == @answer
  end
end



=begin
#Driver Code
game = GuessingGame.new(42)
p game.guess(50)
p game.guess(5)
p game.guess(3)
p game.guess(55555)
p game.guess("execute order 66")     #hmmm. can't seem to get the ArgumentError to work.
=end

# Reflection

=begin


- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# => Instance variables are like the traits of an object, telling you what the object is like and defining its properties. Methods set the limits of what the object can do. For example, a cream-based sauce object can only reduce, it can never expand like a, uh, balloon object could.

- When should you use instance variables? What do they do for you?
# => Instance variables (@variables) are good when defining properties of(/within) an instance of a class, aka *an object of a certain class type*. They can only be referred to within class methods. To quote http://ruby.about.com/od/variables/a/Instance-Variables.htm, seeing as how my language can fall a bit short, "They differ from local variables in that they don't exist within any particular scope.... Instance variables live within a class instance, so as long as that instance stays alive, so will the instance variables" and can be referenced in any method of that class. Whew!

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => Flow control is the act of setting up different sets of behaviors based on different conditions presented to a program. I guess you can use it, at the most abstracted level, by creating different possibilities for input/output results! My main struggle here was keeping all the possible input situations - and, from method to method, returned values - covered so that you don't get a gap in behavior instruction.

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => So a lot of learning to program, and absorbing feedback from evalutation therein, comes down to "You did this thing. Why did you make it so complicated?" A symbol isn't complicated. David Black is quick to point out that they are immutable (unchanging) and unique. We don't have a program where we need/want our resultant answers to change or be compromised or edited, we only want them to inform. So why complicate it with strings, or even integers?

=end