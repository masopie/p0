// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 1:

// Add the class "done" to the #release-0 div.
// http://www.w3schools.com/jsref/prop_html_classname.asp

document.getElementById("release-0").className = done;


// Release 2:

// Set the display property of the #release-1 div to none.
//

document.getElementById("release-1").style.display = "none";

// Release 3:

// Change the inner text of the <h1> tag to "I completed release 2."
// http://www.w3schools.com/jsref/met_element_getelementsbytagname.asp
// NOTE: when the node on which getElementsByTagName is invoked is not the document node, in fact the element.getElementsByTagNameNS method is used.

var h1 = document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";

// Release 4:

// Add the background color #955251 to the #release-3 div. #955251 was Pantone's color of the year for 2015!
// http://www.w3schools.com/jsref/prop_style_backgroundcolor.asp

document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:

// Select all occurrences of class .release-4 and change the text-size to 2em.
// http://www.w3schools.com/jsref/prop_style_font.asp
// NOTE: is for loop is necessary here, given that there are multiple .release-4 instances?...

document.getElementById("release-4").style.font = "2em";

// Release 6:

// Take the HTML in the template.hidden and append it to the bottom of the page. Use the Treehouse Blog Template Tag (http://blog.teamtreehouse.com/creating-reusable-markup-with-the-html-template-element) resource for help.
//

var template = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));

// Reflection:
/*

// What did you learn about the DOM?
It's cool! The Document Object Model is the basic, longhand, normal version of what frameworks/libraries like JQuery do: it's the API through which JavaScript interacts with website content - changing it on the fly, making it responsive, turning elements on/off based on user activity. It was neat to get a visual of "parsing" and how, when a webpage loads, it does so by going through the code, thing by thing, without compiling first.
...All in all, it was neat finding/altering elements. It feels a lot like CSS but with diet JS language.


// What are some useful methods to use to manipulate the DOM?
document.getElementById, document.getElementsByTagName, document.body.appendChild, (tmpl.content.cloneNode(true))



**Frameworks vs libraries note, via SE:

Wikipedia calls framework a "buzzword". It defines a software framework as

    A software framework is a re-usable design for a software system (or subsystem). A software framework may include support programs, code libraries, a scripting language, or other software to help develop and glue together the different components of a software project. Various parts of the framework may be exposed through an API..

So I'd say a library is just that, "a library". It is a collection of objects/functions/methods (depending on your language) and your application "links" against it and thus can use the objects/functions/methods. It is basically a file containing re-usable code that can usually be shared among multiple applications (you don't have to write the same code over and over again).

*/