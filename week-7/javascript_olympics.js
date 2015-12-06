 // JavaScript Olympics

// I paired with Steven Jones on this challenge.

// This challenge took me 5 hours.


// Warm Up

// Bulk Up
var athlete = {
  "name": "Usain Bolt",
  "event": "running fast",
};

 // "Usain Bolt": {event: "running fast af"};
// console.log(athlete);
function addWin(athleteObj, winBool) {
  athleteObj["win?"] = winBool;
    function win() {
      if (winBool == true)
        console.log(athleteObj["name"] + " won at " + athleteObj["event"] + ".");
      else
        console.log(athleteObj["name"] + " didn't win.");
  };
  win();
};
// addWin(athlete, false)


// function win(athObj) {
//   if athObj["win?"] == true;
//     console.log(athObj["name"] + "won at" + athObj["event"]);
//     else
//       console.log(athObj["name"] + "is a loser :\\");
// };
// win(athlete);

// console.log(athletes["Usain Bolt"]["event"]);

// ...So our "event:" is treated as a STRIMBLE??

http://skillcrush.com/2015/02/02/37-rails-sites/
// Jumble your words
var jumble = function(string) {
  string = string.split("");
  string.reverse();
  //string.concat([0],[1] ... [7]);
  string = string.join("");
  console.log(string);
}

jumble("asdfasdf")



// var jumble = function(jumbleString) {
//   jumbleString = jumbleString.split("");
//   jumbleString = jumbleString.reverse();
//   console.log(jumbleString.join(""));
// }

// jumble("Hello there!")


// 2,4,6,8
var evenArray = []
var evens = function(array) {
  for (var i = 0; i < array.length; i++)
    if (array[i] % 2 === 0)
      evenArray.push(array[i]);
}

evens([3, 2, 1, 5, 7, 3, 2, 0, 9, 8, 4, 3, 7])

console.log(evenArray); //has to go AFTER "evens" array is provided

// alternate partner solution

function isEven(nums) {
  var evenNums = []
  for (var counter = 0; counter < nums.length; counter++)
    if (nums[counter] % 2 == 0)
      evenNums.push(nums[counter]);
  console.log(evenNums);
};
isEven([1,2,,112,14,4,2,41,2,,5,5,6,7,5,4,2,123,5,,677])


// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// - What JavaScript knowledge did you solidify in this challenge?
//  Adding a property to our "associative array" (aka adding a property/value pair to our Object, or "hash" in Ruby :P ) in the first exercise was, to be frank, a pain in the ass. My pair finally clinched it with the nested "if/then"-containing function, but we both worked through a few itty bitty syntactic landmines that ruined the whole thing repeatedly. I guess I came out of this noticing just how damn SIMILAR a lot of syntax rules are between these two languages, but with different little rules.

// - What are constructor functions?
//  As the reading said itself, "Constructor function type notation is preferred if you need to do some initial work before the object is created or require multiple instances of the object where each instance can be changed during the lifetime of the script." This sounds suspiciously like Ruby classes.
//  Long story short, a constructor function is a way to create a new object type (instance of a function) and get repeat use out of it. It's "just as robust" as a regular JS function (can define parameters, call other functions, etc), but the constructor function is called via the new operator (http://www.javascriptkit.com/javatutors/oopjs2.shtml).
//  Also, you have to "instantiate (create a new instance of) the object first" every time you use it, unlike the literally notated object. You can do this by typing:
//  var myNewObject = new myObject();
//  myNewObject.whatAmI();

// - How are constructors different from Ruby classes (in your research)?
//  There's a conspicuous absence of unique variable terms, like instance variables in ruby (@variable). Everything else looks pretty similar.