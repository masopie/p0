# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  ## first attempt, just using the nifty .reduce method i read about on jerome albert's "do it the right way" site:
  #array_concat.reduce
  #OR
  #a = array_1 + array_2
  #a.reduce
  ## .....ok. didn't work. it accepted 2 arguments
  array_1.concat(array_2)
  ## BOOOOOM!!! pulled from Rubyist p. 264.
  ## note: avoid  using .push, as it just shoves the second array in there as a two-dimensional array instead of combining them like .concat.
end