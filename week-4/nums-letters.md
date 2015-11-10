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