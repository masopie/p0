- What does puts do?
  - Puts prints the result of your process to the command line.

- What is an integer? What is a float?
  - An integer is a whole number (one without a decimal or remainder). A float, or "floating-point number," is a number with a decimal.

- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  - Float division leaves room for a remainder after the decimal (eg 9 / 2 = 4.5). Integer division doesn't (eg 9 / 2 = 4). The former is useful for, as Pine explains it in his book, academic purposes (such as experiments). The latter, integer division, seems to be the more *practical,* both in programming and real life. *After all, if you're an undergrad who can't stop slugging down **$2 Fireball shots** and you only have **$9**, well, that's not going to get you **4 and a HALF** shots, is it?

```ruby
puts "How many hours are there in a year?"
puts 24 * 365

puts "How many minutes are in a decade?"
puts 60 * 24 * 365 * 10
```

------


-How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  - Well, it, uh... I mean, it just waits for you to use an appropriate symbol between your numbers, is all. The symbols are + to add, - to subtract, * to multiply, and / to divide.

-What is the difference between integers and floats?
  - Integers are whole numbers which yield whole number results. A float can include digits after the period. (eg 4 vs 4.03, respectively)

-What is the difference between integer and float division?
  - Integer division will only yield the whole number, basically discarding or ignoring any value after the decimal. Float division's results will retain these decimal numbers!

-What are strings? Why and when would you use them?
  - Strings are just what their name implies - a string/series of characters between apostrophes or quotes that keep their order.

-What are local variables? Why and when would you use them?
  - Local variables are variables beginning with a lower-case letter or underscore which "don't have the value nil before initialization" (which I BELIEVE means that they basically can't be interpreted to exist at all until you give them a value).

-How was this challenge? Did you get a good review of some of the basics?
  - Yeah, I feel like I did! Probably not nearly enough though. It even made me research some things that our initial codecademy work didn't touch on.

Challenge links!
[4.2.1 Defining Variables](https://github.com/masopie/phase-0/blob/master/week-4/defining-variables.rb)
[4.2.2 Simple String Methods](https://github.com/masopie/phase-0/blob/master/week-4/simple-string.rb)
[4.2.3 Local Variables and Basic Arithmetical Expressions](https://github.com/masopie/phase-0/blob/master/week-4/basic-math.ruby)