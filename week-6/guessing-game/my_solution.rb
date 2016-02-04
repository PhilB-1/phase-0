# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: a guess at the answer
# Output:whether your guess was too high, too low, or correct, and true or false based on the last guess being correct or not.
# Steps:
#initialize the class and make any class variables.
#use if statements in the guess method to print to the screen whether it is correct, too high, or too low.
#create a class variable that accepts the value of the last guess value
#have solved? method check the value of that variable and checks it against what the actual value is.

# Initial Solution

# class GuessingGame
#   @@answer_array = []
#   def initialize(answer)
#     @@answer = answer

#   end

#   def guess(guesses)
#     puts @@answer
#     puts guesses
#     @guesses=guesses
#     @@answer_array << guesses
#     if @guesses > @@answer
#       p :high
#     elsif @guesses == @@answer
#       p :correct
#     elsif @guesses < @@answer
#       p :low
#     end
#   end

#   def solved?
    #this is doing true or false for each thing in the the array. Maybe use a while loop on the array so you print true if you find one that mathces and false otherwise. Maybe use loop do and break if an item equals the answer.
    #@@answer_array.each do |x|
    # i = 0
    # while i < @@answer_array.length
    #   if @@answer_array[i] == @@answer
    #     p true
    #     break
    #   elsif (@@answer_array[i] != @@answer) && (i == (@@answer_array.length - 1))
    #     p false
    #     break
    #   elsif @@answer_array[i] != @@answer
    #     i += 1
    #   end
    # end

  # end

  # Make sure you define the other required methods, too
# end

# game = GuessingGame.new(9)
# game.guess(6)
# game.solved?
# game.guess(11)
# game.solved?
# game.guess(9)
# game.solved?
# game.guess(10)
# game.solved?

# Refactored Solution
class GuessingGame
  @@answer_array = []
  def initialize(answer)
    @@answer = answer

  end

  def guess(guesses)
    puts @@answer
    puts guesses
    @guesses=guesses
    @@answer_array << guesses
    if @guesses > @@answer
      p :high
    elsif @guesses == @@answer
      p :correct
    elsif @guesses < @@answer
      p :low
    end
  end

  def solved?
    if @guesses == @@answer
      p true
    else
      p false
    end
  end
end




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#The classes we've used have represented reall world items and the methods contained in that class represent the actions that can be performed on thos objects. The instance variables work throughout the different actions contatined in that object.

# When should you use instance variables? What do they do for you?
# You should use instance variables when you need to use the same variabl across different methods in the same object, but don't want it to be accessed by other objects in the same class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is creating methods that are based on the outcomes of other methods within an object so they are all interconnected. I did have some trouble with the solved method, because I was confused about the instance variables and how they can be used and changed throughout the object, but once I understood that it allowed me complete the activity.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# One of the main reason it wants to create symbols is that it uses less data because if we used a string Ruby would create an symbol for it anyway. Also symbols are more like integers in that they are immutable and cant me be easily changed or manipulated which is good if you need to refer back to it.