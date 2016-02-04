
# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: string of which side of the die came up
# Steps:
# start with original die class code and adjust to accept an array instead of number of sides.
# number of side would be the length of the array

# Initial Solution

class Die
  def initialize(labels)
    @sides = labels.length
    @labels = labels
    unless @sides > 0
      raise ArgumentError.new("Sides must be 1 or greater")
    end

  end

  def sides
    puts "The die has #{@sides} sides"
    return @sides
  end

  def roll
    roll_result = @labels[rand(@sides)]
    puts "The die came up #{roll_result}"
    return roll_result
  end
end

one_sided = Die.new(['A'])
one_sided.roll

# Refactored Solution








# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference between this die class and last weeks was that last week took an integer as the argument for number of sides and this week you took an array of strings that each represented a side of the die. Most of the logic was the same as you needed to know how many sides the die has and you want to implement a random number for the roll, but you are returning the string that represents the side it lands on instead of a number.

What does this exercise teach you about making code that is easily changeable or modifiable?
It shows that most processes are interchangable an can be easily adjusted to deliver a slightly different outcome as long as the basic logic and structure are the same.

What new methods did you learn when working on this challenge, if any?
I didn't utilize any new methods in this exercise.

What concepts about classes were you able to solidify in this challenge?
Mainly how to intialize a class and call the methods stored in that class.

=end