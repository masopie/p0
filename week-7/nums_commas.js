/*
Your previous Ruby content is preserved below:

// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

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


// Refactored Solution
function separateComma(number) {

}



// Your Own Tests (OPTIONAL)

separateComma(8000000)
separateComma(30235982012394)


// Reflection