# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def separate_comma(integer)
  integer = integer.to_s
  length = integer.length
  i = 0
  integer = integer.split("")
  puts integer
  while i < (length - 1)
    if (length - 1) % 3 == 0 && (i % 3 ==0 || i == 0)
      x = integer[i]
      integer[i] = "#{x}" + ","
    elsif (length - 2) % 3 == 0 && ((i-1) % 3 ==0)
      x = integer[i]
      integer[i] = "#{x}" + ","
    elsif (length - 3) % 3 == 0 && ((i-2) % 3 ==0)
      x = integer[i]
      integer[i] = "#{x}" + ","
    end
    i += 1
  end
  puts integer
  integer=integer.join
  p integer
end

separate_comma(1000000)

#Try approaching this by printing out the contents of the array and using indexes divisible by 3 to try and put the comma in the righ place. May also have to incorporate an if statement finding the lenth first and what that's divisible by to know where you are staring.