/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};

gradebook["Joseph"] = {};
gradebook["Susan"] = {};
gradebook["William"] = {};
gradebook["Elizabeth"] = {};

gradebook["Joseph"]["testScores"] = scores[0];
gradebook["Susan"]["testScores"] = scores[1];
gradebook["William"]["testScores"] = scores[2];
gradebook["Elizabeth"]["testScores"] = scores[3];

gradebook["addScore"] = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

//gradebook["getAverage"] = function(){};

// function average(array) {
//   var sum = 0;
//   for(var i = 0;i < array.length;i++){
//     sum = sum + array[i];
//   }
//   var avg = sum / array.length;
//   return avg;
// }

// gradebook["getAverage"] =function(name){
//   return average(gradebook[name]["testScores"]);
// };

// __________________________________________
// Refactored Solution

// function average(array) {
//   var sum = 0;
//   for(var i = 0;i < array.length;i++){
//     sum += array[i];
//   }
//   return sum / array.length;
//   //return avg;
// }

function average(array) {
  return array.reduce(function(a, b) {
    return a + b;
  }) / array.length;
}

gradebook["getAverage"] =function(name){
  return average(gradebook[name]["testScores"]);
};






// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// I relearned, as I have multiple times, that you can do it at all! A function within an object will be one of the object's properties, as we set with gradebook["addScore"] = function(){};

// How did you iterate over nested arrays in JavaScript?
// You can use the same method as normal, you just have to make sure you're identifying the array WITHIN the proper property. When we called our average-finding function, we had to call it on average(gradebook[name]["testScores"]) so that it would find the array of scores within the individual student objects within the gradebook. Like working inside-out, visually.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//  Yup! OK so once we were sure we could nail it with a conventional, clunky #for loop & some extra stuff, I just started hunting through SE answers to see what kinds of methods others truncated finding an array's average into. Lo and behold, #reduce! #Reduce simply adds all the elements of the array together, sort of rolling each consecutive one into an ongoing sum. Just divide this by the element count.






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)