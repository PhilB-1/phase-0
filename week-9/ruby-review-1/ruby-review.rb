# Pseudocode
#Define a method that will take an array of integers
#You will then want to iterate over the array with a loop
#Find the length of the array
#Use a series of if statements to determine if a number is divisible by 3 and not 5, 5 and not 3, or both 3 and 5
#if divisible by 3 and not 5 replace with fizz, if divisible by 5 and not 3 buzz, and if divisible by 3 and 5 fizzbuzz
#change the selected value in the array if one of the conditions are met
#return array with replacements


# Initial Solution

def super_fizzbuzz(array)
  length = array.length
  # print length
  i = 0
  while i < length
    if (array[i] % 3 == 0 && array[i] % 5 != 0)
      array[i] = "Fizz"
    elsif (array[i] % 5 == 0) && (array[i] % 3 != 0)
      array[i] = "Buzz"
    elsif (array[i] % 3 == 0) && (array[i] % 5 == 0)
      array[i] = "FizzBuzz"

    end
    i += 1
  end

  return array

end


super_fizzbuzz([1, 3, 4, 5, 15, 21, 25, 30])



# Refactored Solution

def super_fizzbuzz(array)
  # print length
  i = 0
  while i < array.length
    if (array[i] % 3 == 0) && (array[i] % 5 == 0)
      array[i] = "FizzBuzz"
    elsif (array[i] % 5 == 0)
      array[i] = "Buzz"
    elsif (array[i] % 3 == 0)
      array[i] = "Fizz"
    end
    i += 1
  end

  return array

end




# Reflection

# What concepts did you review in this challenge?
# We reviewed accessing arrays, itrating over arrays, using if statements, and using comparators to set conditions.

# What is still confusing to you about Ruby?
# I think it's more of what I don't know that I don't know, but I feel really comfortable with the concepts convered in this activity. Might need more practice with classes and object oriented programming.

# What are you going to study to get more prepared for Phase 1?
# I plan to do the additional ruby challenges that I didn't do during the pairing challenges to better understand where I need more practice.
