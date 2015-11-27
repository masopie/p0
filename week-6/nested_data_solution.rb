# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

=begin
number_array = [5, [10, 15], [20,25,30], 35]
a = number_array.collect do |n|
	if n.kind_of?(Array)
		n.collect { |m| m + 5}
	else
		n + 5
	end
end

p a


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
b = startup_names.collect do |n|
	if n.kind_of?(Array)
		n.collect do |m|
			if m.kind_of?(Array)
				m.collect { |o| o.insert(-1, "ly")}
			else m.insert(-1, "ly")
			end
		end
	else n.insert(-1, "ly")
	end
end

p b
=end

#Refactored Solutions


number_array = [5, [10, 15], [20,25,30], 35]
a = number_array.collect do |n|
	n.kind_of?(Array) ?	n.collect { |m| m + 5} : n + 5
end

p a


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
b = startup_names.collect do |n|
	if n.kind_of?(Array)
		n.collect do |m|
			if m.kind_of?(Array)
				m.collect { |o| o.concat("ly")}
			else m.concat("ly")
			end
		end
	else n.concat("ly")
	end
end

p b