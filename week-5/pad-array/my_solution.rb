# Pad an Array

# I worked on this challenge [by with:Alyssa Page ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#Input will be an array, a minimum size for the array, and what the array should be padded with if not long enough.
# What is the output? (i.e. What should the code return?)
#It will return an the same array or a copy of it either padded or not padded depending on the minimum size.
# What are the steps needed to solve the problem?
# Define methods
# Compare the length of the array to the minimum size
# If length is greater than or equal to minimum size you'll output the array
# If length is less than the minimum size you'll need to push in the pad value into the array as many times as it is shorter.
#Use a while loop if you need to add to the array

# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size
    return array
  else
    while array.length < min_size
      array << value
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  if array.length >= min_size
    return array
  else
    new_array = array
    while new_array.length < min_size
      new_array << value
    end
  end
  return new_array
end

puts pad([1,2,3],5, "works")
puts pad([1,2], 2, "works")
=end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length < min_size
    while array.length < min_size
      array << value
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = []
  new_array.concat(array)
  if new_array.length < min_size
    while new_array.length < min_size
      new_array << value
    end
  end
  return new_array
end



# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?
It was very helpful as we were able to be on the same page on how to solve the problem. You will also solve it with small steps when you write the code so it helps to plan out your approach.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
It was pretty easy to right into code. There were some areas where we had to ask ourselves how will we do this process with fuctions, methods, or loops that we knew.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution passed most of the test. It would provide us the desired outcome, but the test about objectid and your array equaling array +Array.new we did not initially pass. It was because we set our new array equal to the original array, but we did not know initially because of that both arrays would have the same objectid and by them being equal as we progressed through the method whatever we did would affect both arrays. We solved this by creating a new array and pushing the information from the first array into it using .concat.

When you refactored, did you find any existing methods in Ruby to clean up your code?
The only thing we could do was simply the if statement to only include the if, because the else was all the other options and it didn't have any code that would need to be run if the condition was met.

How readable is your solution? Did you and your pair choose descriptive variable names?
It is very readable and our variable names are descriptive of what they are.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods change the variable in which they are placed on. Non-destructive methods will create a copy of the variable and change that so that the original variable remains the same and untouched.

=end
