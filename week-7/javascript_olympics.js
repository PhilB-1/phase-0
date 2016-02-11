 // JavaScript Olympics

// I paired [with: Mike Gwozdek] on this challenge.

// This challenge took me [1.5] hours.

//PseudoCode
// Input will be an array of athletes
// Output will be an array of athletes with an win property
//create an array
//creat a function that takes array
// Warm Up


// Release 1 - Bulk Up


function athlete(array) {
  var i = 0;
  while (i < array.length){
    array[i].win = "";
    i++;
  };
  return array
};

var olympians =[
   {
    name: "Kobe Bryant",
    event: "Basketball",
  },
   {
    name: "Michael Phelps",
    event: "Swimming",
  }
];

console.log(athlete(olympians));



// Release 2 - Jumble your words

function jumble(word) {
  return word.split("").reverse().join("")
}

var string = "Jumble your words"

console.log(jumble(string))

// 2,4,6,8
function evens(numbers) {
  numbers.forEach(function(entry) {
    if (entry % 2 == 0)
      console.log(entry)
  })
}

function evens(numbers) {
  var i = 0, evenNumbers =[]
  while (i < numbers.length){
    if (numbers[i] % 2 == 0)
      evenNumbers.push(numbers[i])
      i++
  }
  return evenNumbers
}


var numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13]

console.log(evens(numbers))

// "We built this city"


function Athlete(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// ANS: This solidified loops for me. The syntax in JavaScript was initially difficult for me to grasp, but I think I have it now. This also solidified the syntax of javascript and how to read the errors that may come up. I have a better idea of what to look for when something is undefined.

// What are constructor functions?
// ANS: Constructor functions are very similar to classes in ruby. They allow you to build a function with built in objects that you can later call or use onece you've initialize that constructor function.

// How are constructors different from Ruby classes (in your research)?
// ANS: The syntax is different for the object attributes. In Ruby you can say name : "Frank", but in javascript you have to add more to accomplish the same thing.