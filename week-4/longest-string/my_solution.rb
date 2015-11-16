# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  ## FIRST ATTEMPT: found here:
  ## http://jeromedalbert.com/ruby-how-to-iterate-the-right-way/ => .reduce
  #a = list_of_words.reduce
  #return a

  ## ok so i'm not very good at manipulating "reduce"/"inject". I guess i'll wait on knowledgable use of new enumerables. Using...
  ## http://ruby.bastardsbook.com/chapters/enumerables/
  ## ...I found that "Enumerables have built-in min and max methods to find the minimum and maximum values in a collection." Knowing this, I could type:

  #min_num = nil
  #list_of_words.each do |num|
  #  min_num = num if min_num == nil || min_num > num
  #  return min_num
  #end

  ## ok so i'll have to come back to that. but it's REALLY HELPFUL. i took a shortcut here -- after googling the super elegant refactored solution for shortest-string (.min method for integers, .min_by(&:length) for string length), i just assumed what the reversed method term would be. Voila!
  list_of_words.max_by(&:length)

end