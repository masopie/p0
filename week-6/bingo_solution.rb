# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline: We're going to have to create an array of arrays. One master array with 5 arrays, each with 5 elements. Each element of each array corresponds to a BINGO letter (ie indices are B = [0] ... O = [4]). The numbers therein will be randomly generated as part of our methods. So, it's essentially a 2D BINGO board. This is our BingoBoard class.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Going to need a rando alphanumeric. Generate a random letter (B through 0, ie 1 through 5. That latter integer will be "mutated" into a letter, B I N G or O) and a random number (1-100).

# Check the called column for the number called.
  #Going to have to iterate here I think. The first number (indices 0-4, aka BINGO) is the column number. Go through the rows comparing the actual number following the letter to the value in the appropriate column of each row.

# If the number is in the column, replace with an 'x'
  #Well, like the pre-pseudocode says: replace it with an X if true. Else, false, no x replacement, search next element.

# Display a column to the console
  #Use puts to get different rows. Going to make each letter (B-O) associated witheeach 5 columns.

# Display the board to the console (prettily)
  #Put space between each of the numbers in the rows!

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @masterarray = []
  end

  def numgen
    @masterarray.push(["B", "I", "N", "G", "O"].sample).push(rand(1..100))
  end

  def check(alpha=@masterarray[0], num=@masterarray[1])
    @masterarray[0].each do |x|
      if x == "B"
        @bingo_board.each do |swap|
          swap[0] = "X" if swap[0] == masterarray[1]
        end
      elsif x == "I"
        @bingo_board.each do |swap|
          swap[1] = "X" if swap[1] == masterarray[1]
        end
      elsif x == "N"
       @bingo_board.each do |swap|
         swap[2] = "X" if swap[2] == masterarray[1]
        end
      elsif x == "G"
        @bingo_board.each do |swap|
          swap[3] = "X" if swap[3] == masterarray[1]
       end
      elsif x == "O"
        @bingo_board.each do |swap|
          swap[4] = "X" if swap[4] == masterarray[1]
        end
    end
  end

  def display_column(alpha)
    column = "BINGO".index(letter)
    @bingo_board.each do |alpha|
      puts alpha[column]
    end
  end

  def pretty
    @bingo_board.each do |row|
      puts row.join(" ")
  end


end
end
end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @masterarray = []
  end

  def numgen
    @masterarray.push(["B", "I", "N", "G", "O"].sample).push(rand(1..100))
  end

  def check(alpha = @masterarray[0], num = @masterarray[1])
    case @masterarray[0]
      when "B"
        @bingo_board.each { |swap| swap[0] = "X" if swap[0] == masterarray[1] }
      when "I"
        @bingo_board.each { |swap| swap[1] = "X" if swap[1] == masterarray[1] }
      when "N"
        @bingo_board.each { |swap| swap[2] = "X" if swap[2] == masterarray[1] }
      when "G"
        @bingo_board.each { |swap| swap[3] = "X" if swap[3] == masterarray[1] }
      when "O"
        @bingo_board.each { |swap| swap[4] = "X" if swap[4] == masterarray[1] }
      end
    end
  end

  def display_column(alpha)
    column = "BINGO".index(letter)
    @bingo_board.each { |alpha| puts alpha[column] }
  end

  def pretty
    @bingo_board.each { |row| puts row.join(" ") }
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

p new_game = BingoBoard.new(board)

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => Not extremely difficult. Pseudocode is clearly an anchor, a sort of pivot point, for the upcoming code where you can go back to recenter yourself. In turn, it's pretty natural (despite stuttering here and there) to get it down to something that feels sensible. I should probably be more specific with my initial ideas in it though, eg listing specific methods, so I don't get lost later on.

# What are the benefits of using a class for this challenge?
# => Well, it certainly takes care of having to write multiple methods, beyond creating the new instance of said class, to get the entire rando letter/number combo check-off process done. You can just initialize a class instance and have everything taken care of automatically!

# How can you access coordinates in a nested array?
# => Well my brain is fried so I can't quite remember the term, but you need use as many sequential square brackets as there are nested arrays (along with the original array).

# What methods did you use to access and modify the array?
# => .each and - this isn't a method - but the concept of nested methods. Basically just iterating through the array to see if we could replace the nested ones with X.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# => Case statement operator. I just learned it from my pair yesterday and have been itching to use it (like the Ternary operator) basically wherever I can. It's basically a more dry if/then situation. Maybe an if..then with, like, less potential moving parts?

# How did you determine what should be an instance variable versus a local variable?
# => I think I've become too reliant on prebuilt spec files to test things, because I'm A) not sure if my entire program fully works and B) whether I've kept my instance and local variables straight. I used instance variables when I had a variable that EVERY method within the class instance needs to be conversant with. The local variable can just be the ones we leave behind after finishing its containing method.

# What do you feel is most improved in your refactored solution?
# => Just cleaning up the methods, both crunching method definitions down using the curly brackets and implementing the case statement.