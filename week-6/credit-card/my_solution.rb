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