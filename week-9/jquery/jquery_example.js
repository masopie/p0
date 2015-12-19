// U3.W9:JQuery

/*

What is jQuery?
I liked how Codecademy put it: jQuery is a library, or set of helpful add-ons, providing a simple interface for giving you immediate, visual, and REALLY POWERFUL results, instead of the more laborious (underlying) JS route.

What does jQuery do for you?
This is probably a good time to bring back up what a 'library' is (seemingly SOMEWHAT synonymous with 'framework'). A library, by the way -- it's just a file containing reusable code (objects/functions/methods) that you can link among multiple apps. jQuery is a library for JavaScript. You link it in its own JS file for respective HTML/CSS files to get access to easy and crazy-good movement, response, visual, etc. effects. As their tagline seems to go, 'The write less, do more, JS library.'

What did you learn about the DOM while working on this challenge?
Er... I kinda already did the DOM+JS challenge, but I can now see that Codecademy - again, sigh - has a great explanation:

"The DOM consists of every element on the page, laid out in a hierarchical way that reflects the way the HTML document is ordered. Remember how we could think of the HTML document as a tree? You can think of the DOM the same way. Just as with an HTML document, elements in the DOM can have parents, children, and siblings."

*/

// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

/*selectColor = $('color')
selectBorder = $('border')
selectVisibility = $('visibility')*/

$('h1').css({'color': 'cyan'})
$('body').css({'background-color': '#FFE4E1'})


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

/*$("h1").css("color", "green")
$("h1").css("border-style", "solid")
$("h1").css("border-width", ".25em")
$("h1").css("border-color", "#666666 #000000")
$("h1").css('visibility', 'visible')*/

$('body>h1').css({
  'color': 'lime',
  'border': '5px solid yellow',
  'visibility': 'visible'
})

$('div.mascot>h1').html('Chorus Frogs')

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('click', function(e){
  e.preventDefault()
  $(this).attr('src', 'http://www.learner.org/jnorth/images/graphics/f-g/frog_chorus.gif')
})

$('img').on('mouseleave', function(i){
  i.preventDefault()
  $(this).attr('src', 'dbc_logo.png')
  /*$(this).animate({
      opacity: 0.25,
      height: "toggle"
  }, 5000);*/
})

//RELEASE 5: Experiment on your own

/*$('button').on('click', function(i){
  i.preventDefault()
  $(this).attr('src''http://www.learner.org/jnorth/images/graphics/f-g/frog_chorus.gif')
})

...Damn. Guess making a clicked button magically transmogrify into an image is going to be tougher than that...
*/

$('img').click(function(){
  $(this).animate({
      opacity: 0.25,
      height: "toggle"
  }, 5000);
});

})  // end of the document.ready function: do not remove or write DOM manipulation below this.