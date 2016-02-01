# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: how many sides the die has and the side that comes up when rolled.
# Steps: create an argument error, make a method that return then number of sides, and make a method that returns the result of a random roll between 1 and 6.


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("Sides must be 1 or greater")
    end

    @sides = sides

  end

  def sides
    puts "The die has #{@sides} sides"
    return @sides
  end

  def roll
    roll_result = rand(1..@sides)
    puts "The die came up #{roll_result}"
    return roll_result
  end
end

six_sided = Die.new(6)
six_sided.sides
six_sided.roll



# 3. Refactored Solution
#Cannot be refactored futher.






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError will present itself when user uses an argument that is outside of the established parameters. It is used to ensure that the argument entered meets a criteria and if not it tells the user why it doesn't.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them? The initialize method was a new method, but it wasn't hard to implement at all. It was easily just initialize the use of that Class and let's use the methods contained inside of it.

What is a Ruby class?
A Ruby Class is object that contains a series of methods that will work only on objects initialized in that class. The simplest examples of Classes are Strings and Fixnum.

Why would you use a Ruby class?
Classes allow you to create particular methods that will only effect particular objects creted via the class they are apart of. It helps to organize and catagorize objects as well as what will manipulate them.

What is the difference between a local variable and an instance variable?
An instance variable is a variable that is created and can only be called during a paticular instance, for example when the method and class that the instance variable is created in. The instance variable cannot be called eslewhere.Local variables have greater range which will include where it was created and any child elements. Local variables can also have global properties, meaning they can be used through your code.

Where can an instance variable be used?
It can only be called during a paticular instance, for example when the method and class that the instance variable is created in. The instance variable cannot be called eslewhere.
=end
