/*
Minimum requirements:
    Create a new list
    Add an item with a quantity to the list
    Remove an item from the list
    Update quantities for items in your list
    Print the list (Consider how to make it look nice!)

Pseudocode:

- Create a grocery list (object) with item names and quantities
  - Accepts an item
  - Accepts an amount of said item
  - All below modifications (methods) will have to be part of that grocery list.

- Create a method to add an item to the list. Default quantity if not specified is 1.

- Create a method to subtract an item from the list.

- Create a method to update an existing item's quantity.

- Print said list in a nice sentence.



Solution:

*/
// var GroceryList = function() {
//   items = []
//   function addStuff(item, quantity) {
//     items.push([item[quantity]])
// }

// function GroceryList(){
//   this.addFood = function(food, quantity){
//     this[food] = quantity;
//   }
// }





var GroceryList = function(){

  this.addItem = function(item, quantity){
    this[item] = quantity;
  };
  GroceryList.prototype.deleteItem = function(item){
    delete this[item];
  };
  GroceryList.prototype.updateItem = function(item, quantity){
    this[item] = quantity;
    GroceryList.prototype.printList = function(item, quantity){
      console.log("Buy all this! \n");
      for (var i in this.list){                      //Here's where I'm a bit stuck. I can't get the line below to recognize the properties. Oh well kinda sorta MVP BABY! Time to move on!!
        console.log(this["item"] + " " + this.item.quantity + "s.\n")
      };
    }
  };
};

// Refactored Solution



// Driver code
var list = new GroceryList();
list.addItem('butter', 5)
console.log(list)
list.updateItem('butter', 15)
console.log(list)

list.printList();



// Reflection



// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I think I'm finally OK with the idea of a "constructor" - took long enough! - and even employed "prototype" with some level of success. That was really all I did to refactor, was swap out "this" with "GroceryList.prototype" in each of the functions.
// Credit to somewhat comfortably doing this challenge goes to this article: https://blog.pivotal.io/labs/labs/javascript-constructors-prototypes-and-the-new-keyword

// What was the most difficult part of this challenge?
//  Trying to keep all the different functions ("methods"? can i say that? I'm still not quite sure.) within the original GroceryList recognizing the properties/values, ie the items/quantities.

// Did an array or object make more sense to use and why?
//  An object, definitely. I think an array could've worked - and that's the way I started, visible with the commented out junker half-constructs above - but I kind of got impatient trying to remember if I was starting it correctly. More importantly, it feels less verbose to alter the hash-like object's property+value combos, even nested, than arrays in arrays when there are more than one type of data at play.

