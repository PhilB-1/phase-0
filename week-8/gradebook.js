/*
Your previous Ruby content is preserved below:

/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
var gradebook = {
  addScore: function(name, score) {
    gradebook[name].testScores.push(score);
  },
  getAverage: function(name) {
    return average(gradebook[name].testScores);
  }
};

function average(numbers) {
  var total = 0;
  for(var i in numbers) {
    total += numbers[i];
  }
  return total / numbers.length
}

for(var i in students) {
  gradebook[students[i]] = {};
}

for(var i = 0; i < students.length; i++){
  gradebook[students[i]].testScores = scores[i];
}

// gradebook.addScore("Joseph", 20);
// console.log(gradebook.average([4,5,6]));
// console.log(gradebook);
// console.log(gradebook.getAverage("Susan"));

/* Questions */

// for(var prop in gradebook){
//   // for(var i = 0; i < scores.length; i ++){
//   gradebook[prop].testScores = scores[prop];
//   // gradebook.Joseph.testScores = {};


//   // console.log(prop);
//   // console.log([prop]);
//   // }
// }

// for (var j in scores) {
//   var grade = scores[j];
// }










// __________________________________________
// Refactored Solution
var gradebook = {
  addScore: function(name, score) {
    gradebook[name].testScores.push(score);
  },
  getAverage: function(name) {
    return average(gradebook[name].testScores);
  }
};

function average(numbers) {
  var total = 0;
  for(var i in numbers) {
    total += numbers[i];
  }
  return total / numbers.length
}

for(var i = 0; i < students.length; i++){
  gradebook[students[i]] = {};
  gradebook[students[i]].testScores = scores[i];
}







// __________________________________________
// Reflect
/*

What did you learn about adding functions to objects?
This was a bit of a refresher and reinforced the concepts used in the game design about how to create a function within an object and also how to call it. I learned a little more using functions, and calling a global function within another function. I also learned the importance of leaving no specific functions outside of your object so it can be called in other parts of your code if needed.

How did you iterate over nested arrays in JavaScript?
We used for loops with an variable that was incremented so we could use one loop to affect two different arrays simultaneously.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?
No new methods were used.





*/
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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
