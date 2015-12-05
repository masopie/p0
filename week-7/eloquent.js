// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

/*
var total = 0, count = 1;
while (count <= 10) {
  total += count;
  count += 1;
  console.log("total is " + total, "count is " + count)
}
console.log(total);
// → 55
*/

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Triangle:
// counter = ""

// for (var i = 0; i < 7; i++) {
//   counter = counter + "\#";
//   console.log(counter);
// };

//FizzyBottoms

counter = 0

for (var i = 0; i <= 100; i++) {
  if (counter % 5 === 0 && counter % 3 === 0) {
    console.log("Fizz");
  } else if (counter % 3 === 0) {
    console.log("Butts");
  } else if (counter % 5 === 0 && counter % 3 !== 0) {
    console.log("FizzyBottoms");
  } else console.log(counter);
  counter++;
};

// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.