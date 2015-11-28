# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: credit card number
# Output: whether it's a legit credit card number?
# Steps:
# 1. initiate credit card number
# 	if the credit number's length does not equal 16
# 		then return an argument error
# 2. check credit card number
# 	1. convert credit card number into an array of numbers
# 	2. double certain numbers in the array
# 	3. sum up the numbers in the array - but for the numbers that are greater than 10, add up the two digits instead
# 	4. check if the sum is divisible by 10



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard

	def initialize(num)
		@num = num
		if @num.to_s.length != 16
			raise ArgumentError.new
		end
	end

	def check_card
		@array = @num.to_s.split("").collect { |n| n.to_i }
		@array.each_with_index {|value, index| index % 2 == 0 ? @array[index] = value * 2 : @array[index] = value }
		@sum = @array.inject(0) { |sum, value| value >= 10? sum + value.to_s[1].to_i + 1 : sum + value }
		return @sum % 10 == 0
	end
=end



# Refactored Solution


class CreditCard

	def initialize(num)
		@num = num
		if @num.to_s.length != 16
			raise ArgumentError.new
		end
	end

	def check_card
		@array = @num.to_s.split("").collect do |n|
			|n| n.to_i
		end
		@array.each_with_index do |value, index|
			if index % 2 == 0
			@array[index] = value * 2
			else @array[index] = value
			end
		end
		@sum = @array.inject(0) do |sum, value|
			if value >= 10
				sum + 1 + value.to_s[1].to_i
			else sum + value
			end
		end

		return @sum % 10 == 0
	end
end


# Reflection

=begin

What was the most difficult part of this challenge for you and your pair?
# => Oh holy mother of god, just keeping everything straight. This was the first pair challenge where I felt like we really had a ton of different lexical bits that formed a giant coupla constructs. HOWEVER: oddly enough, using the Ternary expression (*if this thing is true* ? *then do this thing* : *else do this*) actually made it feel EASIER for both of us to comprehend all the activity.

What new methods did you find to help you when you refactored?
# => So we refactored backwards: we began with the super-condensed Ternary form (do_blahblah ? if_blahblah_is_true : else_doblahblah) and broke it down for readability. The only refactoring we could have added would probably be to find synonymous methods to what we used (eg converting classes using different terms, etc).

What concepts or learnings were you able to solidify in this challenge?
# => The ternary expression, definitely. The #inject method still feels like a counterintuitive name, but no matter. I am glad for my pair's instincts, he guided us well through consolidating almost everything into/under the check_card method, outside setting the initial CC number.

=end