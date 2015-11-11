# Calculate a Grade

p "What % (1-100) did you get on the test?"
average = gets.chomp
average.to_i

# puts "What % (1-100) did you get on the test?"
# average = gets.chomp
# grade = average.to_i

def get_grade(average)
  if average >= "90"
    average = "A"
  elsif average >= "80"
    average = "B"
  elsif average >= "70"
    average = "C"
  elsif average >= "60"
    average = "D"
  else average = "F"
  end
end

puts get_grade(average)

#def get_grade
#  if average >= "90"
#    puts "A"
#  elsif average >= "80"
#    puts "B"
#  elsif average >= "70"
#    puts "C"
#  elsif average >= "60"
#    puts "D"
#  else puts "F"
#  end
#end

# I worked on this challenge [by myself, with: Nicolette Chambers].


# Your Solution Below