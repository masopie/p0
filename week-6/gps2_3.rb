# Your Names
# 1) Mason Pierce
# 2) David Diaz

# We spent [1.33] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)

  #This is a hash of items that we can make and their serving sizes
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #
  error_counter = 3

  #This is gonna go through each of our key value pairs and compare that to the inputted item to make. Check if it matches nil. If it does not, it will subtract from the error_counter.
  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
      # p library[food]
      # p library[item_to_make]
    end
  end

  #If the error counter never reaches 0, this means that the item passed in, is not one of the matching keys, which will raise an error.
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #Serving_size will be equal to the library key's value.
  serving_size = library.values_at(item_to_make)[0]

  #This will give us the remainder of num_of_ingredients divided by serving_size.
  remaining_ingredients = num_of_ingredients % serving_size

  #This returns the exact serving size if remaining_ingredients is equal to 0, if not it will return the sizing plus whatever plus whatever remaining ingredients are left over to use.
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end



# REFACTOR
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

  ingredients_required = library[item_to_make]
  remaining_ingredients = num_of_ingredients % ingredients_required
  num_of_desserts = num_of_ingredients / ingredients_required

  remaining_ingredients == 0 ? (return "Calculations complete: Make #{num_of_desserts} of #{item_to_make}") : (return "Calculations complete: Make #{num_of_desserts} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE")

  # case remaining_ingredients
  # when 0
  #   return "Calculations complete: Make #{num_of_ingredients / ingredients_required} of #{item_to_make}"
  # else
  #   return "Calculations complete: Make #{num_of_ingredients / ingredients_required} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  # end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 21)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 50)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# =>

# Did you learn any new methods? What did you learn about them?
# =>

# What did you learn about accessing data in hashes?
# =>

# What concepts were solidified when working through this challenge?
# =>