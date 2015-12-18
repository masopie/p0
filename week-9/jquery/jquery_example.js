// U3.W9:JQuery


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
})

//RELEASE 5: Experiment on your own

/*$('button').on('click', function(i){
  i.preventDefault()
  $(this).attr('src''http://www.learner.org/jnorth/images/graphics/f-g/frog_chorus.gif')
})

...Damn. Guess making a clicked button magically transmogrify into an image is going to be tougher than that...
*/

animate

})  // end of the document.ready function: do not remove or write DOM manipulation below this.