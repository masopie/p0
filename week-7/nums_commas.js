/*
Your previous Ruby content is preserved below:

// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Steven Jones.

// Pseudocode
Input: an integer
Output: a string
Steps:
- convert to a string
- convert to array
- reverse input
- every third character, insert a comma
- reverse the array
- join array elements
- convert element to a string
*/
// Initial Solution
/*
var separateComma = function(number) {
  number = number.toString();
  number = number.split("");
  number = number.reverse();
  //number = number.slice(2);

  for (var counter = 3; counter < number.length; counter = counter + 4)
  number.splice(counter, 0, ","); // Changed (counter, 3, ',') to (counter, 0, ',')
  number = number.reverse();
  number = number.join(""); // join() separates elements with commas by default. Hence the empty string as a parameter.
  console.log(number)
}
*/

// Refactored Solution
function separateComma(number) {
  number = number.toString().split("").reverse();
  for (var x = 3; x < number.length; x = x + 4)
    number.splice(x, 0, ",");
    number = number.reverse().join("");
  console.log(number);
}

// Your Own Tests (OPTIONAL)

separateComma(8000000)
separateComma(30235982012394)


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Tough. The general, like, "thrust" of the syntax is VERY similar to Ruby (I've seen my friend using other lower-level languages and that's where the syntax is utterly alien). My pair and i just couldn't wrap our heads around how we'd iterate for an hour or more before just trying out the "for" expression.

// What did you learn about iterating over arrays in JavaScript?
// It feels a little more... wild west-y. You have to hammer out this whole "for" loop/expression instead of just calling a default method like #each in Ruby.

// What was different about solving this problem in JavaScript?
// It looks jankier, first of all. Just less clean than having a preset function like the #each method on Ruby.

// What built-in methods did you find to incorporate in your refactored solution?
// #toString, #splice, #split, #reverse. #splice was the big one, and we found it by mistake - my pair looked up "slice" and, lo and behold, I found "splice" trying to follow his research.