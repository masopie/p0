puts "Hello! Please enter your first name."
first = gets.chomp
puts "Middle initial please."
middle = gets.chomp
puts "Now your last name if you will."
last = gets.chomp
puts "Nice to meet you, #{first} #{middle} #{last}!"

puts ''

puts "Now, please enter your favorite number."
number = gets.chomp.to_i
# number.to_i
# number + 1
puts "Hey... Maybe #{number + 1} could be your new favorite? It IS bigger and better."

# How do you define a local variable?
# A local variable is a variable starting with a lowercase letter. We can apparently feel more free to change these, as they aren't universal like Global variables, and don't have nil value to begin with.

# How do you define a method?
# If an object is a noun, the method is the verb it does. And, I believe, a method is an object itself! OK so basically, a method holds lines of code (code "blocks") which you can "call" (run) by using the name of the method.

# What is the difference between a local variable and a method?
# Both can be used again and again but a local variable is a single line of code. A method is a series of lines of code, a routine, that can be executed. One's part of a program, the other is a program itself!

# How do you run a ruby program from the command line?
# Ah, easy one! Type "ruby [programme-name.rb]"

# How do you run an RSpec file from the command line?
# Make sure, first of all, that you have a second file in the same directory with the solution it's testing. Then, just type "rspec [spec-name.rb]"

# What was confusing about this material? What made sense?
# It was confusing just keeping track of what does what with testing scenarios. Deciphering the error results of Rspec is going to be an ongoing challenge, I can tell. Remembering Chris Pine's sage advice that we have to remember what type of object we're trying to work with (string? integer? float?) is one of the most simple but problematic challenges with Ruby.