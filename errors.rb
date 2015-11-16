# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170. It looks like this file's last line is 170 sooooo....
# 3. What is the type of error message?
# => "syntax error"
# 4. What additional information does the interpreter provide about this type of error?
# => "unexpected end-of-input, expecting keyword_end"
# 5. Where is the error in the code?
# => I believe it is at the end of the while loop!
# 6. Why did the interpreter give you this error?
# => We need to actually close out our while loop (or provide a condition to meet to stop/break). It just keeps going!

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => "in '<main>'"
# 3. What additional information does the interpreter provide about this type of error?
# => 'undefined local variable or method `south_park' for main:Object (NameError)'
# 4. Where is the error in the code?
# => just the whole line itself - the object's lack of value assignment, etc.
# 5. Why did the interpreter give you this error?
# => 'in '<main>'' helps elucidate a bit - I think it's because we have an element (object?) that's just sitting there, undefined, with nothing happening on it and no value assigned to it (or it, a value, not assigned to anything!) outside any other methods (or, y'know, just code in general).

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 51
# 2. What is the type of error message?
# => 'in '<main>''
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method 'cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# => before cartman()
# 5. Why did the interpreter give you this error?
# => because we need to define the hell outta this presumable method!

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65, 69
# 2. What is the type of error message?
# => in 'cartmans_phrase' (syntax error?)
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
# => line 69 here, or the "cartman's_phrase('I hate kyle') line"
# 5. Why did the interpreter give you this error?
# => because you're trying to pass an argument  ('I hate Kyle') to a method that can't accept arguments, basically

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 84, 88
# 2. What is the type of error message?
# => in 'cartman_says' (syntax error, yes, but specifically about the arguments)
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (0 for 1) (ArgumentError)
# 4. Where is the error in the code?
# => lines 84 or 88
# 5. Why did the interpreter give you this error?
# => because it's the reverse of the last error - there is no argument for the method we've defined, so we can't make him say an offensive message :(



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105, 109
# 2. What is the type of error message?
# => Argument Error (syntax)
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
# => lines 105 or 109, in the argument for the method
# 5. Why did the interpreter give you this error?
# => because our method definition was expecting two arguments when it only got one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => in `*' (also, "TypeError" later on)
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum (TypeError)
# 4. Where is the error in the code?
# => line 124, right at the asterisk (multiplication operator)
# 5. Why did the interpreter give you this error?
# => back to Chris Pine here :) it "erred" because "respect my authoritay!" isn't a quantity that you can create (multiply) of 5's. we'd have to reverse it, ie: "authoritayyyyy!" * 5.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => in `/' (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0 (ZeroDivisionError)
# 4. Where is the error in the code?
# => right at that division operator!
# 5. Why did the interpreter give you this error?
# => pretty self explanatory: can't divide by zero :)

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => in `require_relative' ...no .md file exists?
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /Users/masopie/phase-0-curriculum/phase-0/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# => line 155, the "require_relative" command that associates this with another file
# 5. Why did the interpreter give you this error?
# => because we need to have "cartmans_essay.md" before we can have this direct to it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# => The very first one we did on our own that was missing end!! Very easy to gloss over those bits of code that complete a method.

# How did you figure out what the issue with the error was?
# => Combination of knowledge from the challenges (and doing this in reverse a bit, whoops) and making sure to read the WHOLE MESSAGE. It helps to just look at the line or just look at the error message type, but you have to take in the whole thing to make sense of some of these.

# Were you able to determine why each error message happened based on the code?
# => Yes. On each one.

# When you encounter errors in your future code, what process will you follow to help you debug?
# => Just going 1) which line of code, 2) what's the "type" if any -- it wasn't super helpful sometimes with listing an error type, and 3) what addiitonal info is it providing? Oh, and beyond all that, doing some searches :)