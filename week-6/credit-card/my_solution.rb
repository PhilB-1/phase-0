# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Eddie Bueno ].
# I spent [1.5] hours on this challenge.

# Pseudocode


# Input: credit card number (16 digit integer)
# Output: true or false of whether the credit card matches or not
# Steps:
#Creat a class credit card
#Creat a class credit card
#convert to string
#split the integer and put into an array
#convert the convert the contents of the array back into an integer
#loop starting from the end of the array and have it double every other number by only doing it when i % -2 = 0
#do each method on the new array that does if the length of the number is 2 convert to string, split it, then add strings and convert back to integer.
#then add all the numbers in the array
#lastly see if the number is divisible by 10

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    raise ArgumentError.new('Not enough digits') if number.to_s.length != 16
    @number = number
  end
  def check_card
    new_array = @number.to_s.split('')
    new_array.map!{|x| x.to_i}

    i = -1
    while i >= -new_array.length
      if i % 2 == 0
        new_array[i] *= 2
      end
      i -= 1
    end
    new_array.map!{|x| x.to_s}
    new_array.map! do |y|
      if y.length == 2
        y.split('')
      else
        y
      end
    end
    new_array.flatten!
    sum = 0
    new_array.each{ |a| sum+=a.to_i}
    if sum % 10 == 0
      p true
    else
      p false
    end
  end
end
creditcard = CreditCard.new(1234567812341231)
creditcard.check_card



# Refactored Solution

class CreditCard
  def initialize(number)
    raise ArgumentError.new('Not enough digits') if number.to_s.length != 16
    @number = number
  end
  def check_card
    new_array = @number.to_s.split('')
    new_array.map!{|x| x.to_i}

    i = -1
    while i >= -new_array.length
      new_array[i] *= 2 if i % 2 == 0
      i -= 1
    end
    new_array.map!{|x| x.to_s}
    new_array.map! do |y|
      if y.length == 2
        y.split('')
      else
        y
      end
    end
    new_array.flatten!
    sum = 0
    new_array.each{ |a| sum+=a.to_i}
    p sum % 10 == 0
  end
end


# Reflection
# What was the most difficult part of this challenge for you and your pair?
# The most difficult part of this challenge was breaking it down, because there were so many different steps as well as knowing when to convert the items to a string or an array, because you could only manipulate it in certain ways when it was in a certain state. We needed to constantly print the array as we worked through the problem to make sure the code was doing what we wanted.

# What new methods did you find to help you when you refactored?
# The main new method that helped us was the flatten method.

# What concepts or learnings were you able to solidify in this challenge?
# I feel much better about understanding which methods work with which classes and which methods won't.