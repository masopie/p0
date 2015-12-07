
// Add the finished solution here when you receive it.

// Pseudocode

// Define a function names total that accepts an array of numbers as an argument
    // Inside of the sunction create a variable named sum
    // Then I want to initialize a counter variable and set it equal to 0
    // Using that counter variable as a starting point, I want to loop through the array and for every indice it passes, add the number at that indice to the sum
    // Return the sum variable

// Define a function called mean that accepts an array of numbers as an argument
    // Inside of the sunction create a variable named sum
    // Then I want to initialize a counter variable and set it equal to 0
    // Using that counter variable as a starting point, I want to loop through the array and for every indice it passes, add the number at that indice to the sum
    // Return the sum divided by the length of the array (which is the total numbers that were in the array. This will provide us the average)

// Define a function called median that accepts an array of numbers as an argument
    // Create a variable and pass into it the array
    // Sort the array
    // If the array.length % 2 == 0 (If the length of the array is even, there will be 2 numbers that are those most middle numbers)
      // Create a variable and save the two most middle numbers to it.
      // Add those two numbers and save it to the exact same variable
      // Divide that number by 2
      // Return that number
    // Else return the middle number

// Solution to the pseudocode
// function total
var sum = function(numberArray) {
  var total = 0;
  for(i = 0; i < numberArray.length - 1; i++) {
    total += numberArray[i];
  }
  return total
};

console.log(sum([1,2,3,4,5,6,7,8,9,0]));

// function mean

var mean = function(numberArray) {
  var total = 0;
  for(i = 0; i < numberArray.length - 1; i++) {
    total += numberArray[i];
  }
  return total / numberArray.length;
};

console.log(mean([1,2,3,4,5,6,7,8,9,10]));

// function median
var median = function(numberArray) {
  numberArray.sort(function(a, b) {return a-b;});
  console.log(numberArray);
  var arrayLength = numberArray.length;
  if(arrayLength % 2 === 0) {
    var middleSum = numberArray[arrayLength / 2 - 1] + numberArray[arrayLength / 2];
    return middleSum / 2;
  } else {
    return numberArray[(arrayLength - 1) / 2];
  }
};

/*
Final Person User Story Interpretation:

As a user, I want to be able to take a bunch of numbers from different sources and consolidate it in one place. Then I want to be able to add up all the numbers so that I can see how many I've got. See, In my line of work, people often come to me with certain tasks. And these tasks require me to give an estimate as per my fee. So if I wanted to know what my total is for the month so as to keep track, I'd like to be able to do that.

As a user, I would like to be able to figure out what my average is. As per the aforementioned line of work, I would like a good solid number as far as my usual fee, something that I could show to people so they know I'm not jerking them. So if there's some way I could take all the 'donations' I collect through the month, find some way to figure out what my average donation is, I could show people without having to get mean. You know what I mean?

As a user, I would like to know what my middling fee is. Not the average, because that takes into account the highs and the lows of the seasons and what have you, but actual dead center, smack in the middle bullseye fee that I charge for my talents. That way, people will know that I play it straight. I don't give them the run around. I got numbers, see? Hard numbers that don't lie. I take them and show them that I got a 'mean' fee. But that don't mean that's what they getting charged, only if they brought in as much as my grand total. So as to be equitible, I would like the amount that's right in the middle so they know they're gettin a fair shake from Bobby the BullFrog. I woulda said chorus frog, but I don't sing to no one for nothin.
*/

// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)

/*
Looks like we nailed it for the first couple of "Sum" tests! Admittedly, I had to swap the terms "total" and "sum" to get it to work with the tests.

Unfortunately, we error out at the 3rd test, "sum should return the sum of all elements in an array with an odd length."
*/