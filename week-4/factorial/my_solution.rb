# Factorial

# I worked on this challenge with Joe Plonsker.

# Pseudocode:

# Define first method that takes a positive integer and calculates its factorial.
# Start "while" loop. Eg, "while the integer > 1, multiply the integer by itself minus 1"
# Intention is to have the next lowest integer multiplied by the last integer:
# while n > 1
#   return n * (n - 1)

# Your Solution Below

def factorial(number)
  placeholder = 1
  while number > 0
    placeholder = placeholder * number
    number -= 1
  end
  return placeholder
end

#def factorial(number)
#  while number >= 1
#    number -= 1
#    placeholder = number - 1
#    number * placeholder
#    return placeholder
#  end
#end

# Your Solution Below
#def factorial(number)
#  while number != 1
#    number * (number - 1)
#    return number
#    number -= 1
#    break
#  end
#end

# factorial(0)