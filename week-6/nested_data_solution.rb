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

# Reflections

=begin

What are some general rules you can apply to nested arrays?
# => On basic comprehension of what's going on:
# => I think working from the inside-out is a good basic starter, especially if you're running into problems. It seems like a lot of nesting is going to be iterating and that can get tricky if you look at it from the highest (outermost) level alone. Going down to your "innermost" nested array means you'll find the first thing that gets an "end result" and returns something before going back and starting through the layers of nested stuff again!

What are some ways you can iterate over nested arrays?
# => Oh, so many! Just setting basic conditional situations (eg with if..else) is a great start. Where you say "Okay! If the array's initial element (ie, nested array numero uno IN the main array) meets X criteria, go ahead and return the element in that larger "element" (nested array). If not, go to the next "larger element" (ie, nested array #2) and check it!"

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# => #kind_of was a neat and equally intuitive synonym for #is_a, which I had been using. Both are booleans to check if an object is a certain class.
# => My pair instinctively thought to use #inject where I thought to use, with some refreshers and his help, #concat. Both were pretty darn simple.
# => OH, oh. And he had glanced at #Ternary methods, which we successfully implemented. WOW was that ever a BIG change in refactoring here!

=end