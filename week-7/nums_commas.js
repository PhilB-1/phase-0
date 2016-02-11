// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Bethlehem.

// Pseudocode
// convert interger to a string
// convert string to an array (can use split)
// reverse the array
// find the length of the array
// use a for loop to interate over the array starting at the index [3]
// add 4 to the variable
// use splice to insert the Comma
// return the array




// Initial Solution
// function separateComma(number) {
//   var n = number.toString();
//   if (n.length > 4)
//     n = n.split("").reverse();
//     console.log(n)
//     for (var i = 3; i < n.length; i+=4 )
//       n.splice(i, 0, ",")
//   console.log(n)
//   n.reverse()
//   n = n.join("")
//   console.log(n)
// }

// separateComma(1349857330)





// Refactored Solution
function separateComma(number) {
  var n = number.toString();
  if (n.length >= 4){
    n = n.split("").reverse();
    for (var i = 3; i < n.length; i+=4 ){
      n.splice(i, 0, ",")
    }
    n = n.reverse().join("")
  }
  console.log(n)
  return n
}

separateComma(1349857330)
separateComma(1000)
separateComma(34)


// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof separateComma(1000) === 'string'),
  "The value of separateComma should be a string.",
  "1."
)

assert(
  separateComma(1000) === "1,000",
  "The value of separateComma should equal 1,000.",
  "2."
)

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
We approached the logic of the problem in the same way we approached the ruby problem, but we had to readjust which methods, or objects, we could use because they are not the same. We did do it differently and in a shorter way than I did it the first time.

What did you learn about iterating over arrays in JavaScript?
I learned that it's very similar to iterating over arrays in ruby. The syntax is a bit different and you  must make sure you put parenthesis after every object.

What was different about solving this problem in JavaScript?
Some of the methods like reverse and insert that work on strings in ruby don't work in javascript.

What built-in methods did you find to incorporate in your refactored solution?
We used reverse, split, splice (to insert the commas), and join.

*/