# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

#first attempt. too complex. googling yielded a simpler one.
#def welcome(address)
#  a = address.split
#    if a.upcase == "CA"
#      return "Welcome to California"
#    else
#      return "You should move to California"
#    end
#end

#refactored with easy peasy "include?" method
def welcome(address)
  if address.include? "CA"
    return "Welcome to California"
  else
    return "You should move to California"
  end
end