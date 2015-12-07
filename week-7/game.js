 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Much like many of the circumstances leading you to where you are now, there are innumerable factors in the great scheme of things outside your control. Let us, then, occupy the body of a caterpiller on the leaf: pure stimulus and response, feeling out the world, trying to find a drop of water to drink before a bird randomly eats you.
// Overall mission: To get to the drop of water before a bird sees you.
// Goals: Move around, find the drops of water, don't run into the bird!
// Characters: 1. You (caterpillar), 2. bird (death)
// Objects: 1. A fellow caterpillar (or, a partial object, if we're talking about the shortcomings of many according to Lacan :D ), 2. a drop of water. This makes... 4 objects? I think?
// Functions: 1. Growth, 2. sustain. Meeting a fellow caterpillar will make you "grow" (increase survivability when you hit a bird). Water will "sustain" you (you just collect it, eg "now you have 10 waters!" and keep going).

// Pseudocode
// General: Have to keep this simple. Using x-y coordinate axis, use Code Combat-esque moves to increase or decrease position on each axis. Bird, water, and fellow caterpillar are randomly placed.
// You (caterpillar) start at X: 0, Y: 0. Let's say leaf is -2 through 2 on each axis. End game if player leaves leaf.
// Water, bird, and fellow caterpillar (1 each) are randomly placed.
// Move is first function. Need to be able to go up, down, left, or right. (Clarificaction: needs to be able to take these as 4 arguments and produce different results, eg 'if up y = y + 1')
// Grow is second function. Run into otherCaterpillar, get +1 Growth
// Water is third function. Purely aesthetic, has no bearing on game except adding # gratification to user :)))).
// Somehow have to factor in bird function -- eg run into bird, random 1-100 roll whether you die or not?? "Grow" can increase # rolled (eg Grow + 1 = your roll is 1-1000 that you die. crap this is getting complicated, maybe nix this part for now.)


// Initial Code
/*
var otherCaterpillar = {
  "xaxis": Math.floor(Math.random() * 2),
  "yaxis": Math.floor(Math.random() * 2),
};



var dropOfWater = {
  "xaxis": Math.floor(Math.random() * 3),
  "yaxis": Math.floor(Math.random() * 3),
};



var caterpillar = {
  "xaxis": 0,
  "yaxis": 0,
  "growth": false,
  "water": 0,

  // ...Turns out axis names(properties? keys??) and their values aren't accessible unless this function appears within caterpillar object. Moved it down.

  move: function(direction) {
    switch(direction) {
      case "up":
        caterpillar["yaxis"] ++;
        break;
      case "down":
        caterpillar["yaxis"] --;
        break;
      case "left":
        caterpillar["xaxis"] --;
        break;
      case "right":
        caterpillar["xaxis"] ++;
        break;
      default:
        console.log("Please enter a direction!!")
    }

    console.log("A booming voice says, \'You have wandered to " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf, grasshopp... er, I mean, caterpillar.\'")

    var bird = {
      "xaxis": Math.floor(Math.random() * 2),
      "yaxis": Math.floor(Math.random() * 2),
    };

    //interesting thing I'm seeing about bird: looks like the bird will continue "moving", as it generates new coords each time you submit a move as the caterpillar. Perhaps because the object is remade anew each time the #move function, which are both necessarily within caterpillar?

    console.log("You are at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"])
    console.log("Bird is at " + bird["xaxis"] + "." + bird["yaxis"])

    //OK, longwinded revelation here: my original purpose of the "breakme" statement label was to basically (and more readably than just a regular if...else expression) say GAME OVER. But then it struck me, thanks to a stackexchange question: I don't need to #break out of anything if there's no loop in the first place.
    //There isn't conventional user input here, just the #move function being called below. Thus, there's nothing to "stop" with the break bit. However the if..else expression still pretty useful for signaling your "progress"!

    breakme: if (caterpillar["xaxis"] == bird["xaxis"] && caterpillar["yaxis"] == bird["yaxis"]) {
      console.log("...You hear wings flap and are gobbled up by something bigger than you. The booming voice softens as things go dark, \'Now you understand everything, caterpillar. See you soon.\'");
      break breakme;
    } else if (caterpillar["xaxis"] > 4 || caterpillar["xaxis"] < -4) {
      caterpillar["xaxis"] = 0;         //These two lines reset your position to 0.0 if you "fall off" the 8x8-square
      caterpillar["yaxis"] = 0;         //leaf (decided to expand from 2x2 per pseudocode)
      console.log("...You fell off the leaf, brave one. See you soon.");
    } else if (caterpillar["yaxis"] > 4 || caterpillar["yaxis"] < -4) {
      caterpillar["xaxis"] = 0;
      caterpillar["yaxis"] = 0;
      console.log("...You fell off the leaf, brave one. See you soon.");
    } else {
      console.log("\'...but continue questing, THERE IS MUCH LEFT TO DO!\'");
    }
/*
    if (caterpillar["xaxis"] == bird["xaxis"] && caterpillar["yaxis"] == bird["yaxis"]) {
      console.log("...You hear wings flap and are gobbled up by something bigger than you. The booming voice softens as things go dark, \'Now you understand everything, caterpillar. See you soon.\'");
    } else {
      console.log("\'...but continue questing, THERE IS MUCH LEFT TO DO!\'")
    }
*/
    /*
    if direction = up {
      caterpillar["yaxis"] ++;
    } else if direction = down {
      caterpillar["yaxis"] --;
    } else if direction = left {
      caterpillar["xaxis"] ++;
    } else if direction = right {
      caterpillar["xaxis"] --;
    }
    */
//  }
//
//};


// Refactored Code

// var otherCaterpillar = {
//   "xaxis": Math.floor(Math.random() * 2),
//   "yaxis": Math.floor(Math.random() * 2),
// };

var dropOfWater = {
  "xaxis": Math.floor(Math.random() * 4),
  "yaxis": Math.floor(Math.random() * 4),
};


var bird = {
  "xaxis": Math.floor(Math.random() * 4),
  "yaxis": Math.floor(Math.random() * 4),
};

var gameover = false;

var caterpillar = {
  "xaxis": 0,
  "yaxis": 0,
  "growth": false,
  "water": 0,
  drink: function() {
    if (this.xaxis == dropOfWater.xaxis && this.yaxis == dropOfWater.yaxis) {
      this.water ++;
    }
  },

move: function(direction) {
    switch(direction) {
      case "up":
        this.yaxis ++;
        break;
      case "down":
        this.yaxis --;
        break;
      case "left":
        this.xaxis --;
        break;
      case "right":
        this.xaxis ++;
        break;
      default:
        console.log("Please enter a direction!!")
    }

    /*drink: function(water) {

      }
    }*/
    this.drink();
    console.log("You've had " + this.water + " drinks.")

    console.log("A booming voice says, \'You have wandered to " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf, grasshopp... er, I mean, caterpillar.\'")


    console.log("You are at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"])
    console.log("Bird is at " + bird["xaxis"] + "." + bird["yaxis"])

    if (this.xaxis == bird.xaxis && this.yaxis == bird.yaxis) {
      gameover = true;
      console.log("...You hear wings flap and are gobbled up by something bigger than you. The booming voice softens as things go dark, \'Now you understand everything, caterpillar. See you soon.\'");

    } else if (caterpillar["xaxis"] > 4 || caterpillar["xaxis"] < -4) {
      this.xaxis = 0;
      this.yaxis = 0;
      console.log("...You fell off the leaf, brave one. See you soon.");
    } else if (caterpillar["yaxis"] > 4 || caterpillar["yaxis"] < -4) {
      this.xaxis = 0;
      this.yaxis = 0;
      console.log("...You fell off the leaf, brave one. See you soon.");
    } else {
      console.log("\'...but continue questing, THERE IS MUCH LEFT TO DO!\'");
    }
  }



}

// DRIVER CODE:

while (gameover == false) {
 switch(Math.floor(Math.random() * 4)) {
   case 0:
     caterpillar.move("up");
     break;
   case 1:
     caterpillar.move("down");
     break;
   case 2:
     caterpillar.move("left");
     break;
   default:
     caterpillar.move("right");
 }
}


/*
caterpillar.move("up")
//console.log("You are now at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf.")
caterpillar.move("up")
//console.log("You are now at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf.")
caterpillar.move("up")
//console.log("You are now at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf.")
caterpillar.move("up")
//console.log("You are now at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf.")
caterpillar.move("up")
//console.log("You are now at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf.")
caterpillar.move("right")
//console.log("You are now at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf.")
caterpillar.move("right")
//console.log("You are now at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf.")
caterpillar.move("right")
//console.log("You are now at " + caterpillar["xaxis"] + "." + caterpillar["yaxis"] + " on the leaf.")
caterpillar.move("Doritos")
*/


// Reflection


// What was the most difficult part of this challenge?
//  Figuring out where stuff went. Which is to say, what should go where to not break our JS environment and keep the code going. I know that sounds overly simple but, when you only have a week with it, it's hard to even remember basic - and probably sort of erroneous - signposts like "OK, so a JS function basically = a Ruby method... and a JS Object can cotain either an array or Ruby Hash-esque name/value (aka property/value) pairs... and don't forget to put your functions INSIDE your objects, like we were trying with newly built Methods inside newly built Classes in Ruby recently..."
//  ...Whew, it just became a lot.

// What did you learn about creating objects and functions that interact with one another?
//  I hate to say I am still unsure after such a big assignment, but I THINK I'm kinda getting comfortable with this in JS now. Basically, the "insides" (typically functions, other objects, and various statements (eg if..else)) of one object can't necessarily reference the "insides" of another. To help with this - like, in a visual learner style - I kept my two basic objects separate: bird and caterpillar are their own big ol' monolithic objects. That way, i could at least reference bird itself inside caterpillar. Other, "smaller" objects, such as dropOfWater - an item you collect - can just go inside the player object (caterpillar) as a property/value pair.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//  I didn't cover every appearance very well, but I remembered from my pair challenge that using an object's property doesn't have to be the clunky object["name"], and can instead be this.name (for the object you're inside now) and/or object.name. Same goes for remembering my & my pair's use of switch..case statement: SO clean. I honestly don't know how I'd have done this game if we hadn't hammered that simple statement into our brains.


// How can you access and manipulate properties of objects?
//  Well, uh. Hm. Syntactically, you can just say object["property"] = value; and you SHOULD be able to (re-)assign the property/value pair therein? You can also increment with it (or do whatever math stuff) like I did with the axes & water.