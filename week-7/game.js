 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:Your goal is to get down the mountain safely, build your skills, and make it down tougher slopes. You want to make it down the toughest slopw, the ramps before the season ends.
// Overall mission: Make it down the toughest slopes.
// Goals:Build your skills.
// Characters:Snowboarder and Skier
// Objects:Snowboarder, Skier, Slopes
// Functions: rideslope, take lesson

// Pseudocode
//create objects for snowboarder, skier, and different slopes.
//create functions for riding a slope and for taking a lesson.
//
//
//

// Initial Code
var snowboarder = {
  speed: 0,
  agility: 0,
  stability: 0,
  lesson: function () {
  this.speed +=1;
  this.agility +=1;
  this.stability +=1;
  season.days -=1;
  return console.log("test");
  },
  ride: function (slope) {
  if ((slope.speed <= this.speed) && (slope.agility <= this.agility) && (slope.stability <= this.stability)){
    console.log("Great job getting down the slope!")
    //if (slope = "bunny") {
    this.speed += 2
    this.agility += 2
    this.stability += 2
    season.days -=1;
    //};
  } else {
    if ((slope.speed - this.speed > 1) && (slope.agility - this.agility > 1) && (slope.stability - this.stability > 1)) {
      console.log("You fell badily and broke your leg! You need a lot more practice before this slope. Heal up and get back at it.")
      season.days == 0;
    } else {
      console.log("You had a small tumble and made it down the hill, but you will need some rest. You need more practice before this slope.")
      season.days -=2;
    };
  };
  }
}

// var skier = {
//   speed: 0,
//   agility: 0,
//   stability: 0,
// }

var bunny = {
  speed: 1,
  agility: 0,
  stability: 1,
}

var advance = {
  speed: 3,
  agility: 1,
  stability: 2,
}

var expert = {
  speed: 6,
  agility: 5,
  stability: 7,
}

var ramps = {
  speed: 10,
  agility: 10,
  stability: 10,
}

var season = {
  days: 7,
  weather: "Sunny"
}





console.log(snowboarder)
snowboarder.lesson()
console.log(snowboarder)
snowboarder.ride(bunny)
console.log(snowboarder)


// Refactored Code
var snowboarder = {
  speed: 0,
  agility: 0,
  stability: 0,
  lesson: function () {
  this.speed +=1;
  this.agility +=1;
  this.stability +=1;
  season.days -=1;
  return console.log("test");
  },
  ride: function (slope) {
  if ((slope.speed <= this.speed) && (slope.agility <= this.agility) && (slope.stability <= this.stability)){
    console.log("Great job getting down the slope!")

    this.speed += 2
    this.agility += 2
    this.stability += 2
    season.days -=1;
  } else {
    if ((slope.speed - this.speed > 1) && (slope.agility - this.agility > 1) && (slope.stability - this.stability > 1)) {
      console.log("You fell badily and broke your leg! You need a lot more practice before this slope. Heal up and get back at it.")
      season.days == 0;
    } else {
      console.log("You had a small tumble and made it down the hill, but you will need some rest. You need more practice before this slope.")
      season.days -=2;
    };
  };
  }
}

var bunny = {
  speed: 1,
  agility: 0,
  stability: 1,
}

var advance = {
  speed: 3,
  agility: 1,
  stability: 2,
}

var expert = {
  speed: 6,
  agility: 5,
  stability: 7,
}

var ramps = {
  speed: 10,
  agility: 10,
  stability: 10,
}

var season = {
  days: 7,
}





console.log(snowboarder)
snowboarder.lesson()
console.log(snowboarder)
snowboarder.ride(bunny)
console.log(snowboarder)



// Reflection
//What was the most difficult part of this challenge?
//I had to big difficulties during this challenge. It was actually creating what the game would be and how it would meet the expectations of it technically. I also had some issues using the functions and calling them. I didn't initially realize they had to be created within the object.

//What did you learn about creating objects and functions that interact with one another?
//The main lesson I learned was that function that you plan to call on a particular object must be called within that object and to use this, when affecting properties within the object you called the function on.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//I didn't implement any new methods during this challenge.

// How can you access and manipulate properties of objects?
//You can access them through using notation like this.property = value. You can also increment the value if the value is an integer using += and -=.

//
//
//
//
//
//
//