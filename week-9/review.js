//User Story
//As the user I want to be able to create a new grocery list with the items and their quantity. I want to be able to add an item to the list with the quantity. I want to be able to remove the item from the list with the quantity. I want to be able to update the quantity of any item in the list. I also want to print out the list with each item and it's quantity.

//Pseudocode
//create a variable grocery list that contains an object
//create functions within it to add, remove, update
//add function will accept two arguments, item and quantity and will create it in the object
//update will accept two arguments, item and quantity and will increase it by quantity if it
//remove will accept one argument, item, and will remove it from the object
//print will  log the list to the console.

//Initial Solution

var groceryList = {
  createList: function(list) {
    this[list] = {};
  },
  add: function(list, item, quantity) {
    this[list][item] = quantity;
  },
  update: function(list, item, quantity) {
    this[list][item] += quantity;
  },
  remove: function(list,item) {
    delete this[list][item];
  },
  print: function(list) {
    console.log(this[list])
  }
};
groceryList.createList("Safeway")
groceryList.add("Safeway", "bread", 1)
groceryList.print("Safeway")
groceryList.add("Safeway", "bananas", 3)
groceryList.print("Safeway")
groceryList.update("Safeway", "bread", 1)
groceryList.print("Safeway")
groceryList.remove("Safeway", "bread")
groceryList.print("Safeway")
console.log(groceryList)

//Refactored
var groceryList = {
  createList: function(list) {
    this[list] = {};
  },
  add: function(list, item, quantity) {
    this[list][item] = quantity;
  },
  update: function(list, item, quantity) {
    this[list][item] += quantity;
  },
  remove: function(list,item) {
    delete this[list][item];
  },
  print: function(list) {
    console.log(list + " List");
    for(line in this[list])
      console.log(line + ": " + this[list][line]);
  }
};
groceryList.createList("Safeway")
groceryList.add("Safeway", "bread", 1)
groceryList.print("Safeway")
groceryList.add("Safeway", "bananas", 3)
groceryList.print("Safeway")
groceryList.update("Safeway", "bread", 1)
groceryList.print("Safeway")
groceryList.remove("Safeway", "bread")
groceryList.print("Safeway")
console.log(groceryList)

//Reflection
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
I solidfied using objects, creating functions within objects, and calling the functions on an object. I also reviewed the syntax of javascript.

What was the most difficult part of this challenge?
Honestly, it was some of the syntax. Forgeting to use the commas to separate properties in the object, as well as reversing the position of function and the name of the function.

Did an array or object make more sense to use and why?
An object made much more sense to use because you could give the property (or index) the name of the item and the value be the quantity.
*/