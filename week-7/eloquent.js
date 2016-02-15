// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var five = 5;

return five * 10;

prompt("What's your favorite food?")
console.log("Hey! That's my favorite food too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var i = 1;
while i <= 100 {
  if(i % 3 == 0) {
    console.log("Fizz");
  } else if ((i % 5 ==0) && (i % 3 != 0)){
    console.log("Buzz");
  } else {
    console.log(i);
  }
  i ++
}


// Functions

// Complete the `minimum` exercise.
function min(x, y){
  if (x < y){
    return x;
  } else if (y < x) {
    return y;
  }
}

console.log(min(8, 2))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Phillip"
  age: 27
  favorite_foods: [pizza, candied yams, fried chicken]
  quirk: "Like to garden"
}