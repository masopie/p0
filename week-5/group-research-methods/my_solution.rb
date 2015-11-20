# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# .find_all is the same as .select

# Person 5
def my_array_splitting_method(source)
  main_array = []
  integer_array = []
  string_array = []
  dupsource = source.dup
  dupsource.each do |a|
    if a.is_a? Integer
      integer_array.push(a)
    elsif a.is_a? String
      string_array.push(a)
    end
  end
  main_array.push(integer_array).push(string_array)
end

print my_array_splitting_method(i_want_pets)

def my_hash_splitting_method(source, age)
  main_array = []
  younger_array = []
  older_array = []
  dupe_source = source.dup
  dupe_source.each do |a,b|
    if b <= age
      younger_array.push([a,b])
    elsif b > age
      older_array.push([a,b])
    end
  end
  main_array.push(younger_array).push(older_array)
end

print my_hash_splitting_method(my_family_pets_ages, 4)

# Identify and describe the Ruby method(s) you implemented.
# Quick summary: After entirely too much initial overthinking/sweating/screaming, I realized we needed something very simple: to iterate through the arrays here, saying "If something is an integer, shove it into the first little array. If it's a string, shove it into the second. Also make sure there's a giant array that you can shove both little guys into."
# The big 3 methods I used were 1) .dup, 2) .is_a? <Class>, and 3) .push
# 1) .dup method ~ creates a "shallow copy" of the object (the variable is copied, but not the object it points to). So, er... I'll try to regurgitate what the guide told me:
# => If we just made a new variable and pointed it at the object, the object is still getting "destroyed" in the process of the method. Since we can't be destructive with this split method, duplicating lets us hack away at a shallow copy -- "A shallow copy means that only the fundamental datatypes actually get copied into new objects, everything else gets copied as a reference to the original object!"
# 2) .is_a? <Class> ~ simpler one -- just checks if the object you call it on is that class type you listed! (eg is it a string, integer, float, etc)
# 3) .push ~ "Pushes the given object(s) on to the end of this array." Cool. I believe this is inherently destructive? Anyway, the return value is the array itself, so you can "chain together several appends."

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# Its bark is bigger than its bite! As with everything we've been doing, you have to start small (pseudocode?): ask what the basic steps are that you need from the computer and work from there. Looking might take awhile but you're bound to find your method (or few methods!).