// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: .
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//  We pseudocoded verbally as we went along. To recap:
//  Input: Collection of voters' ballots. This is basically an object of objects (or, as we keep calling it, a hash of hashes... damn you Ruby!), where we have property-value pairs nested in the value position of an outer property-value pair.
//  Output: Who's getting elected! The winner should be the person with the highest number of votes.
//  Steps:
// 1. Iterate through the gigantic "hashy hash" - er, sorry, the object of objects of objects
// 2. If-then statement where, if votes[voter][position] (aka the elected position INSIDE the voter name (or, the voter's ballot) INSIDE the giant votes object) = whichever position (pres/VP/sec/treas), add one to that vote total.
// 3. Make big array for each position
// 4. Push the name-position totals (separated by steps 1 and 2 into position object with name and number of votes for that position as the inner object property-value arrays) into their respective big arrays
// 5. Writing a construct that COMPARES the vote #'s is just too damn hard, so just sort by value-spot vote numbers and take the biggest
// 6. Return the name with the "biggest" votes!

// __________________________________________
// Initial Solution

for (var voter in votes){
  var ballot = votes[voter];
  for (var position in ballot){
    if(position == "president"){
      if(ballot[position] in voteCount[position]) {
      voteCount["president"][ballot[position]] += 1;
    } else {
          voteCount["president"][ballot[position]] = 1;
        }
    }
    if(position == "vicePresident"){
      if(ballot[position] in voteCount[position]) {
      voteCount["vicePresident"][ballot[position]] += 1;
    } else {
          voteCount["vicePresident"][ballot[position]] = 1;
        }
    }
    if(position == "secretary"){
      if(ballot[position] in voteCount[position]) {
      voteCount["secretary"][ballot[position]] += 1;
    } else {
          voteCount["secretary"][ballot[position]] = 1;
        }
    }
    if(position == "treasurer"){
      if(ballot[position] in voteCount[position]) {
      voteCount["treasurer"][ballot[position]] += 1;
    } else {
          voteCount["treasurer"][ballot[position]] = 1;
        }
    }
  }
}

var presArray = [];
var viceArray = [];
var secArray = [];
var treasArray = [];

for (var position in voteCount) {
  var people = voteCount[position];
  for(var name in people) {
    if (position == "president"){
    presArray.push([name, people[name]]);
    }
    if (position == "vicePresident"){
    viceArray.push([name, people[name]]);
    }
    if (position == "secretary"){
    secArray.push([name, people[name]]);
    }
    if (position == "treasurer"){
    treasArray.push([name, people[name]]);
    }
  }
}

presArray = presArray.sort(function(a, b){return a[1]-b[1]}).reverse();
officers["president"] = presArray[0][0];
viceArray = viceArray.sort(function(a, b){return a[1]-b[1]}).reverse();
officers["vicePresident"] = viceArray[0][0];
secArray = secArray.sort(function(a, b){return a[1]-b[1]}).reverse();
officers["secretary"] = secArray[0][0];
treasArray = treasArray.sort(function(a, b){return a[1]-b[1]}).reverse();
officers["treasurer"] = treasArray[0][0];

console.log(officers);




// __________________________________________
// Refactored Solution

// To re-emphasize declared variables for comprehension purposes:

// votes = {
//  ballot: { vote }
// }

// &&

// voteCount = {
//   position: { votes }
// }

for (var voter in votes) {
  var ballot = votes[voter];
  for (var position in ballot) {
    var vote = ballot[position];
      if (voteCount[position].hasOwnProperty(vote)) {
        voteCount[position][vote] += 1;
      }
      else {
        voteCount[position][vote] = 1;
      };
  };
};

for (var vote in voteCount) {
  var votesDefault = 0;
  var position = voteCount[vote];
  for (candidate in position) {
    votes = position[candidate];
    if (votes > votesDefault) {
      votesDefault = votes;
      officers[vote] = candidate;   //Still sort of confused why "position", the declared var for voteCount[vote], wouldn't work here
    };
  };
};



// __________________________________________
// Reflection



// What did you learn about iterating over nested objects in JavaScript?
// #IN provides a really handy way of transforming your #for loop from just "do X code block X number of times" into "do X code block if you find X type of elements within X object". In other words, #for...in... is something that can execute a specific block of more complex code based on differing property factors at play in an object.

// Were you able to find useful methods to help you with this?
//  Yup, rediscovered the hell outta the #sort function. I remembered reading the w3schools explanation of how #sort's inner function(){return} worked and wanted to brush up on and implement that.
//  It was really exciting to learn #if...in... loop from my pair, which we HAD to implement inside of our #for...in... loops. Just keeping all the nested crap straight was an hour-long dithering process unto itself.

// What concepts were solidified in the process of working through this challenge?
//  Accessing nested objects' properties, definitely. My pair was a phenomenal help with walking and re-walking me through this. We even went back and practiced variables to sort of mimic where in the various levels of object-ery we were accessing.




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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)