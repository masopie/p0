def reverse(ary)
  result = []
  for result[(0..result.length).to_a.reverse.shift] in ary
  #it errored out when i used #push. reading on SE (http://stackoverflow.com/questions/3718625/what-does-rubys-arrayshift-do), i see that #shift is like push but for the BEGINNING of the array. I guess I mistook what #reverse was doing here...
  end
  result
end

p reverse(["foo", "bar", "baz"])

#Reflection

# What concepts did you review or learn in this challenge?
# => Well I had to totally review the #for loop. It feels really comfortable in JS now after a week of using it but the Ruby syntax, although simple, didn't come naturally. I knew I'd have to slam quite a few methods on top of each other to do this "do it all in one line!" challenge, and the #to_a and #reverse seemed like natural calls. The #shift, though...

# What is still confusing to you about Ruby?
# => #Shift. I'll be honest, I was hitting a wall with the errors I got for 'result[(0..result.length).to_a.reverse].' I really, really thought that should be working and thus got into that headspace of "well what DO I DO NOW???" I explained in the code comment why #shift seems to work, as it appears to keep array order but shuffle first to last, etc.

# What are you going to study to get more prepared for Phase 1?
# => I've got this habit where I just go into code sensory overload and kind of freak out as to where to start. I've typed this before in another reflection or two for larger projects - vocab, syntax, and general writing processes make sense in my head, but I get them a bit jumbled and have a hard time just starting typing.
# => My own preparation is going to be to start typing and stop thinking. I chose a Rubesque challenge here that I thought looked familiar enough to conquer handily and, though it presented research challenges, that shouldn't be the mindset of a developer. One should seek difficulty.