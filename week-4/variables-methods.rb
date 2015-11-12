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