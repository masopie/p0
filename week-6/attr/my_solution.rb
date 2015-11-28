#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: None that I can figure out
# Output: An "NameData" object, itself part of the latter Greetings class, which uses a name given by an instance variable in the NameData class (ok that was a mouthful)
# Steps:
# Define initialize for both classes and set instance variables in either
# Set an attr_ method for the instance variable in each. This way the Greetings class can access the NameData class
# Define #hello (hinted at in the exercise) as being a string in which we'll call a salutation string AND #name.

class NameData

  attr_accessor :name

  def initialize
    @name = "Mason"
  end
end


class Greetings

  attr_accessor :namedata

  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Greetings " + namedata.name + "! How wonderful to see you today!"
  end
end


# Driver Code
greet = Greetings.new
greet.hello


# Reflection

=begin

# Release 1
What are these methods doing?
# => They're making the instance variables (ones pointing to an "age", a "name", and an "occupation") accessible outside the class definition. The "=" in "change_my_X=()" methods are, I suspect from the notes and their role, just syntactic sugar. Honestly this might be the first thing I've read in the Rubyist book that wasn't explained well. Anyway, it certainly helps remind you of what I believe the method is doing: uses a new variable to change the original instance variable!

How are they modifying or returning the value of instance variables?
# => These "change_my_X=" methods are saying "See this original instance variable? ...Well, situation's changed, see, so now it's just gonna have to have this new value. OR ELSE."

# Release 2
What changed between the last release and this release?
# => attr_reader!!! Oooh-wee what a thrill. So basically it just makes it so you can access an instance outside the class itself instead of, as with the first release, having to write that entire "what_is_age" method just to display the age.

What was replaced?
# => By establishing

attr_reader = @age

we no longer need

def what_is_age
  @age
end

Is this code simpler than the last?
# => Well. A little.

# Release 3
What changed between the last release and this release?
# => Wow. Now we don't even have to define "change_my_age" method outside the class definition!

What was replaced?
# => Using

attr_writer :age

completely replaced any need for

def change_my_age=(new_age)
  @age = new_age
end

Is this code simpler than the last?
# => For sure. Now that you're talking about simplifying multiple constructs into single lines, in my eyes the result is going to be simpler than the sum of its reduced components.

# Release 6
What is a reader method?
# => A reader method lets you read an instance variable outside its class... Er, OK, I had to cheat and reread the exercise language. I guess this is important: a reader method actually RETURNS A VALUE OR STATE outside of the class.

What is a writer method?
# => Writer methods let you CHANGE the value of a variable outside of the class. But ya can't read it! :P

What do the attr methods do for you?
# => Kind of just make life easier. They save you from having to write your own method every time you just want to make a variable "real" outside its class definition.

Should you always use an accessor to cover your bases? Why or why not?
# => Nope! You might want people to read something you write but you don't necessarily always want them to be able to write over it... write? Err, I mean, right?! Seems like you don't always want to use the dual power/freedom of #attr_accessor!

What is confusing to you about these methods?
# => I guess it's the syntax of the object following your #attr_ method. So suddenly, symbols aren't immutable if they follow #attr_writer/accessor? ...Then again, I may be overthinking this. A quick look at the Docs is reminding me that a :symbol is just representatve of names and some strings inside the interpreter.


=end